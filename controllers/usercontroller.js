import Users from '../models/UserModel.js';
import argon2 from 'argon2/argon2.js';

export const getUsers = async (req, res) => {
  try {
    const response = await Users.findAll({
      attributes: ['uuid', 'name', 'email', 'role'],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const getUsersById = async (req, res) => {
  try {
    const response = await Users.findOne({
      attributes: ['uuid', 'name', 'email', 'role'],
      where: {
        uuid: req.params.id,
      },
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createUser = async (req, res) => {
  const { name, email, password, confPassword, role } = req.body;
  if (password != confPassword)
    return res.status(400).json({ msg: 'Password tidak sama' });
  if (password === '' || password === null)
    return res.status(404).json({ msg: 'Empty Password' });
  const hashPassword = await argon2.hash(password);
  try {
    await Users.create({
      name: name,
      email: email,
      password: hashPassword,
      role: role,
    });
    res.status(201).json({ msg: 'Created Account Success' });
  } catch (error) {
    res.status(400).json({ msg: 'Created Account Failure' });
  }
};

export const updateUser = async (req, res) => {
  const user = await Users.findOne({
    where: {
      uuid: req.params.id,
    },
  });

  if (!user) {
    return res.status(404).json({ msg: 'User not found' });
  }

  const { name, email, password, confPassword, role } = req.body;
  let hashPassword;

  // Check if password is undefined, null, or an empty string
  if (password === undefined || password === null || password === '') {
    // Use the existing hashed password from the database
    hashPassword = user.password;
  } else {
    // Hash the new password
    hashPassword = await argon2.hash(password);
  }

  // Check if passwords match
  if (password !== confPassword) {
    return res.status(400).json({ msg: 'Password tidak sama' });
  }

  try {
    await Users.update(
      {
        name: name,
        email: email,
        password: hashPassword,
        role: role,
      },
      {
        where: {
          id: user.id,
        },
      }
    );
    res.status(200).json({ msg: 'User Updated' });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

export const deleteUser = async (req, res) => {
  const user = await Users.findOne({
    where: {
      uuid: req.params.id,
    },
  });
  if (!user) return res.status(404).json({ msg: 'User not found' });
  try {
    await Users.destroy({
      where: {
        id: user.id,
      },
    });
    res.status(200).json({ msg: 'User Deleted from world' });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};
