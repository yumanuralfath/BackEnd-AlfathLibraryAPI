import express from 'express';
import {
  getBooks,
  createBook,
  updateBook,
  deleteBook,
} from '../controllers/bookcontroller.js';
import { verifyUser } from '../middleware/AuthUser.js';

const BookRouter = express.Router();

//CRUD
BookRouter.get('/books', verifyUser, getBooks); //menampilkan semua buku
BookRouter.post('/books', verifyUser, createBook); //Create buku
BookRouter.patch('/books/:id', verifyUser, updateBook); //Update buku
BookRouter.delete('/books/:id', verifyUser, deleteBook); //Delete buku

export default BookRouter;
