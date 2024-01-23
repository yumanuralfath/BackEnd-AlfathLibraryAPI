import express from "express";
import { getUsers } from "../controllers/usercontroller.js";

const userRoute = express.Router();

userRoute.get('/users', getUsers);

export default userRoute;