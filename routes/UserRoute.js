import express from 'express';
import {
  getUsers,
  getUsersById,
  createUser,
  updateUser,
  deleteUser
} from '../controllers/usercontroller.js'

const userRouter = express.Router();

userRouter.get('/users', getUsers);
userRouter.get('/users/:id', getUsersById);
userRouter.post('/users', createUser);
userRouter.patch('/users/:id', updateUser);
userRouter.delete('/users/:id', deleteUser);

export default userRouter;