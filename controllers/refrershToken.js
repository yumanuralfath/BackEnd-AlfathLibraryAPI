import Users from '../models/UserModel.js';
import jwt from 'jsonwebtoken';

export const refreshToken = async (req, res) => {
  try {
    const refreshToken = await req.cookies.refreshToken;

    if (!refreshToken) {
      return res.sendStatus(401);
    }

    const user = await Users.findAll({
      where: {
        refresh_token: refreshToken,
      },
    });

    if (!user[0]) {
      return res.sendStatus(401);
    }

    const userId = user[0].id;
    const name = user[0].name;
    const email = user[0].email;

    jwt.verify(
      refreshToken,
      process.env.REFRESH_TOKEN_SECRET,
      (err, decoded) => {
        if (err) {
          if (err.name === 'TokenExpiredError') {
            return res.status(401).json({ message: 'Token has expired' });
          }
          return res
            .status(403)
            .json({ message: 'Forbidden: Token verification failed' });
        }

        const newAccessToken = jwt.sign(
          { userId, name, email },
          process.env.ACCESS_TOKEN_SECRET,
          { expiresIn: '15m' }
        );

        res.json({ accessToken: newAccessToken });
      }
    );
  } catch (error) {
    console.error('Error in refreshToken:', error);
    res.status(500).send('Internal Server Error');
  }
};
