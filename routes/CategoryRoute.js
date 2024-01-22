import express from 'express';
import { getCategory } from '../controllers/categoryController.js';

const CategoryRouter = express.Router();

CategoryRouter.get('/categories', getCategory);

export default CategoryRouter;
