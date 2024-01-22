import express from 'express';
import db from './config/Database.js';
import cors from 'cors';
import CategoryRouter from '../BackEnd/routes/CategoryRoute.js';
const app = express();

try {
  await db.authenticate();
  console.log('Database Connected...');

} catch (error) {
  console.log(error);
}

//middleware
app.use(cors());
app.use(express.json());

//router 
app.use('/', CategoryRouter);

app.listen(8080, () => console.log('listening on port 8080'));
