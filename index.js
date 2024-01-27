import express from 'express';
import db from './config/Database.js';
import dotenv from 'dotenv';
import cors from 'cors';
import session from 'express-session';
import sequelizeStore from 'connect-session-sequelize';
import CategoryRouter from './routes/CategoryRoute.js';
import BookRouter from './routes/BookRoute.js';
import userRouter from './routes/UserRoute.js';
import AuthRouter from './routes/AuthRoute.js';

dotenv.config();
const app = express();

const sessionStore = sequelizeStore(session.Store);

const store = new sessionStore({
  db: db,
});

try {
  await db.authenticate();
  console.log('Database Connected...');
} catch (error) {
  console.log(error);
}

//middleware
app.use(
  session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
      secure: 'auto',
    },
  })
);
app.use(cors({ credentials: true, origin: 'http://localhost:3000' }));
app.use(express.json());
app.use(CategoryRouter);
app.use(BookRouter);
app.use(userRouter);
app.use(AuthRouter);

// store.sync();

app.listen(process.env.APP_PORT, () => console.log('listening on port 8080'));
