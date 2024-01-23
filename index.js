import express from 'express';
import db from './config/Database.js';
import dotenv from 'dotenv';
import cors from 'cors';
import cookieParser from 'cookie-parser';
import CategoryRouter from '../BackEnd/routes/CategoryRoute.js';
import BookRouter from './routes/BookRoute.js';
import userRoute from './routes/UserRoute.js';
dotenv.config();
const app = express();

try {
  await db.authenticate();
  console.log('Database Connected...');
} catch (error) {
  console.log(error);
}

//middleware
app.use(cors({credentials: true, origin: 'http://localhost:3000'}));
app.use(express.json());
app.use(cookieParser());
app.use('/', CategoryRouter);
app.use('/', BookRouter);
app.use(userRoute);

app.listen(8080, () => console.log('listening on port 8080'));
