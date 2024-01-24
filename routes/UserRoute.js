import express from 'express';
import {
  getUsers,
  getUsersById,
  createUser,
  updateUser,
  deleteUser,
} from '../controllers/usercontroller.js';
import { verifyUser } from '../middleware/AuthUser.js';

const userRouter = express.Router();

userRouter.get('/users', verifyUser, getUsers);
userRouter.get('/users/:id', verifyUser, getUsersById);
userRouter.post('/users', verifyUser, createUser);
userRouter.patch('/users/:id', verifyUser, updateUser);
userRouter.delete('/users/:id', verifyUser, deleteUser);

export default userRouter;
