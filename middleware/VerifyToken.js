import jwt from 'jsonwebtoken';

export const verifyToken = (req, res, next) => {
  try {
    const authHeader = req.headers['Authorization'];

    if (!authHeader) {
      return res.status(401).send('Unauthorized: Missing Authorization header');
    }

    const token = authHeader.split(' ')[1];

    if (!token) {
      return res.status(401).send('Unauthorized: Missing token');
    }

    jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, decoded) => {
      if (err) {
        if (err.name === 'TokenExpiredError') {
          return res.status(401).send('Unauthorized: Access token has expired');
        }
        console.error('Token verification error:', err);
        return res.status(403).send('Forbidden: Token verification failed');
      }

      req.email = decoded.email;
      next();
    });
  } catch (error) {
    console.error('Error in verifyToken middleware:', error);
    res.status(500).send('Internal Server Error');
  }
};
