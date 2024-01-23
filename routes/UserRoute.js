import express from 'express';
import {
  getUsers,
  Register,
  login,
  logout,
} from '../controllers/usercontroller.js';
import { refreshToken } from '../controllers/refrershToken.js';

const userRoute = express.Router();

userRoute.get('/users', getUsers);
userRoute.post('/users', Register);
userRoute.post('/login', login);
userRoute.get('/token', refreshToken);
userRoute.delete('/logout', logout);

export default userRoute;
