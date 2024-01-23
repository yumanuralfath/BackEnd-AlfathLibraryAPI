import express from 'express';
import { getUsers, Register, login } from '../controllers/usercontroller.js';
import { verifyToken } from '../middleware/VerifyToken.js';

const userRoute = express.Router();

userRoute.get('/users', verifyToken, getUsers);
userRoute.post('/users', Register);
userRoute.post('/login', login);

export default userRoute;
