import express from 'express';
import { Op } from 'sequelize';
import Book from '../models/BookModel.js';
import Category from '../models/CategoryModel.js';
import {
  createCategory,
  getCategories,
  getCategoriesByID,
  updateKategori,
  deleteKategori,
} from '../controllers/categoryController.js';

const CategoryRouter = express.Router();

// Route untuk menampilkan seluruh data buku berdasarkan ID kategori
CategoryRouter.get('/categories/:id/books', async (req, res) => {
  try {
    const { id } = req.params;

    // Query untuk mendapatkan semua buku berdasarkan ID kategori
    const books = await Book.findAll({
      where: { category_id: id },
      include: [{ model: Category, attributes: ['name'] }],
    });

    res.json(books);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

//CRUD
CategoryRouter.post('/categories', createCategory);
CategoryRouter.get('/categories', getCategories);
CategoryRouter.get('/categories/:id', getCategoriesByID);
CategoryRouter.patch('/categories/:id', updateKategori);
CategoryRouter.delete('/categories/:id', deleteKategori);

export default CategoryRouter;
