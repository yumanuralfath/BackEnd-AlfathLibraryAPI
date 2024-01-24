import express from 'express';
import db from './config/Database.js';
import dotenv from 'dotenv';
import cors from 'cors';
import CategoryRouter from '../BackEnd/routes/CategoryRoute.js';
import BookRouter from './routes/BookRoute.js';
import userRouter from './routes/UserRoute.js';
import session from 'express-session';

dotenv.config();
const app = express();

try {
  await db.authenticate();
  console.log('Database Connected...');
} catch (error) {
  console.log(error);
}

//middleware
app.use(cors({ credentials: true, origin: 'http://localhost:3000' }));
app.use(express.json());
app.use('/', CategoryRouter);
app.use('/', BookRouter);
app.use(
  session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    cookie: {
      secure: 'auto'
    }
  })
);

app.listen(process.env.APP_PORT, () => console.log('listening on port 8080'));
