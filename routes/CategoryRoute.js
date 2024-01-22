import express from 'express';
import {
  createCategory,
  getCategories,
  getCategoriesByID,
  updateKategori,
  deleteKategori,
} from '../controllers/categoryController.js';

const router = express.Router();

//CRUD
router.post('/categories', createCategory);
router.get('/categories', getCategories);
router.get('/categories/:id', getCategoriesByID);
router.put('/categories/:id', updateKategori);
router.delete('/categories/:id', deleteKategori);

export default router;
