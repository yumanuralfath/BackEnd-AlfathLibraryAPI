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
//fitur route untuk filter
CategoryRouter.get('/categories/:id/books',  async (req, res) => {
  try {
    const { id } = req.params;
    const { sortByTitle, minYear, maxYear, maxPage } = req.query;

    const filterOptions = { category_id: id };

    //filter untuk pengurutan
    const order =
      sortByTitle === 'desc' ? [['title', 'DESC']] : [['title', 'ASC']];

    // Menambahkan filter untuk tahun rilis buku
    if (minYear || maxYear) {
      filterOptions.release_year = {};
      if (minYear) filterOptions.release_year[Op.gte] = minYear;
      if (maxYear) filterOptions.release_year[Op.lte] = maxYear;
    }

    // Menambahkan filter untuk jumlah halaman buku
    if (maxPage) {
      filterOptions.total_page = {};
      filterOptions.total_page[Op.lte] = maxPage;
    }

    // Melakukan query ke database dengan filter dan sorting
    const books = await Book.findAll({
      where: filterOptions,
      order,
      include: [{ model: Category, attributes: ['name'] }],
    });

    res.json(books);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

//CRUD
CategoryRouter.post('/categories',  createCategory);
CategoryRouter.get('/categories',  getCategories);
CategoryRouter.get('/categories/:id',  getCategoriesByID);
CategoryRouter.patch('/categories/:id',  updateKategori);
CategoryRouter.delete('/categories/:id',  deleteKategori);

export default CategoryRouter;
