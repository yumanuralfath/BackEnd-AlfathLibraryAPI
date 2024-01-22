import express from "express";
import mongoose from 'mongoose';
import cors from "cors";
import CategoryRouter from "../BackEnd/routes/CategoryRoute.js";

const app = express();
mongoose.connect('mongodb://localhost:27017/bookfullstack_db');
const db = mongoose.connection;

db.on('error', (error) => console.log(error));
db.once('open', () => console.log('Databse Connected...'));

app.use(cors());
app.use(express.json());
app.use(CategoryRouter);

app.listen(8080, () => console.log('listening on port 8080'));

