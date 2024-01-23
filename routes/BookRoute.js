import express from 'express';
import {
  getBooks,
  createBook,
  updateBook,
  deleteBook,
} from '../controllers/bookcontroller.js';

const BookRouter = express.Router();

//CRUD
BookRouter.get('/books', getBooks); //menampilkan semua buku
BookRouter.post('/books', createBook); //Create buku
BookRouter.patch('/books/:id', updateBook); //Update buku
BookRouter.delete('/books/:id', deleteBook); //Delete buku

export default BookRouter;
