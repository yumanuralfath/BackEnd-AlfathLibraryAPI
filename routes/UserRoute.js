import express from 'express';
import {
  getUsers,
  getUsersById,
  createUser,
  updateUser,
  deleteUser,
} from '../controllers/usercontroller.js';
import { verifyUser, AdminOnly } from '../middleware/AuthUser.js';

const userRouter = express.Router();

userRouter.get('/users', verifyUser, AdminOnly, getUsers);
userRouter.get('/users/:id', verifyUser, getUsersById);
userRouter.post('/users',  createUser);
userRouter.patch('/users/:id', verifyUser, AdminOnly, updateUser);
userRouter.delete('/users/:id', verifyUser, AdminOnly, deleteUser);

export default userRouter;
