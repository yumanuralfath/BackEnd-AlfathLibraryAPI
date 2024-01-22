import express from 'express';
import {
  createCategory,
  getCategories,
  getCategoriesByID,
  updateKategori,
  deleteKategori,
} from '../controllers/categoryController.js';

const CategoryRouter = express.Router();

//CRUD
CategoryRouter.post('/categories', createCategory);
CategoryRouter.get('/categories', getCategories);
CategoryRouter.get('/categories/:id/books', getCategoriesByID);
CategoryRouter.put('/categories/:id', updateKategori);
CategoryRouter.delete('/categories/:id', deleteKategori);

export default CategoryRouter;
