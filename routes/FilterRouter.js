import express from 'express';
import { Op } from 'sequelize';
import Book from '../models/BookModel.js';
import CategorySchema from '../models/CategoryModel.js';

const filterRouter = express.Router();

//filte untuk path /books
filterRouter.get('/books', async (req, res) => {
  try {
    const { title, minYear, maxYear, minPage, maxPage, sortByTitle } =
      req.query;
    const filterOptions = {};

    //filter judul(tidak case sensitive)
    if (title) {
      filterOptions.title = { [Op.iLike]: '%${title}%' };
    }

    //filter tahun rilis
    if (minYear || maxYear) {
      filterOptions.release_year = {};
      if (minYear) filterOptions.release_year[Op.gte] = minYear;
      if (maxYear) filterOptions.release_year[Op.lte] = maxYear;
    }

    //filter jumlah halaman
    if (minPage || maxPage) {
      filterOptions.total_page = {};
      if (minPage) filterOptions.total_page[Op.gte] = minPage;
      if (maxPage) filterOptions.total_page[Op.lte] = maxPage;
    }

    //sorting berdasarkan judul
    const order =
      sortByTitle === 'desc' ? [['title', 'DESC']] : [['title', 'ASC']];

    //melakukakn query ke database dgn filter dan sorting
    const books = await Book.findAll({
      where: filterOptions,
      order,
    });
    res.json(books);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Filter untuk path '/categories/:id/books'
filterRouter.get('/categories/:id/books', async (req, res) => {
  try {
    const { id } = req.params;
    const { title, minYear, maxYear, minPage, maxPage, sortByTitle } =
      req.query;

    const filterOptions = { category_id: id };

    // Menambahkan filter berdasarkan judul buku (tanpa case sensitif)
    if (title) {
      filterOptions.title = { [Op.iLike]: `%${title}%` };
    }

    // Menambahkan filter berdasarkan tahun rilis buku
    if (minYear || maxYear) {
      filterOptions.release_year = {};
      if (minYear) filterOptions.release_year[Op.gte] = minYear;
      if (maxYear) filterOptions.release_year[Op.lte] = maxYear;
    }

    // Menambahkan filter berdasarkan jumlah halaman buku
    if (minPage || maxPage) {
      filterOptions.total_page = {};
      if (minPage) filterOptions.total_page[Op.gte] = minPage;
      if (maxPage) filterOptions.total_page[Op.lte] = maxPage;
    }

    // Menambahkan opsi sorting berdasarkan judul buku
    const order =
      sortByTitle === 'desc' ? [['title', 'DESC']] : [['title', 'ASC']];

    // Melakukan query ke database dengan filter dan sorting
    const books = await Book.findAll({
      where: filterOptions,
      order,
      include: [{ model: CategorySchema, attributes: ['name'] }],
    });

    res.json(books);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

export default filterRouter;