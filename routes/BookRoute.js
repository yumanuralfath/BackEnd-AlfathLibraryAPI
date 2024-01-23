import express from 'express';
import {
  getBooks,
  createBook,
  updateBook,
  deleteBook,
} from '../controllers/bookcontroller.js';
import { verifyToken } from '../middleware/VerifyToken.js';

const BookRouter = express.Router();

//CRUD
BookRouter.get('/books', verifyToken, getBooks); //menampilkan semua buku
BookRouter.post('/books', verifyToken, createBook); //Create buku
BookRouter.patch('/books/:id', verifyToken, updateBook); //Update buku
BookRouter.delete('/books/:id', verifyToken, deleteBook); //Delete buku

export default BookRouter;
