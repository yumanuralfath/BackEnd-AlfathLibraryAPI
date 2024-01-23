import Book from '../models/BookModel.js';

// Menampilkan seluruh buku
export const getBooks = async (req, res) => {
  try {
    const books = await Book.findAll();
    res.json(books);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

// Membuat buku baru
export const createBook = async (req, res) => {
  try {
    const {
      title,
      description,
      image,
      release_year,
      price,
      total_page,
      category_id,
    } = req.body;

    const book = await Book.create({
      title,
      description,
      image,
      release_year,
      price,
      total_page,
      category_id,
    });

    res.json(book);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

// Update buku berdasarkan id
export const updateBook = async (req, res) => {
  try {
    const { id } = req.params;
    const {
      title,
      description,
      image,
      release_year,
      price,
      total_page,
      category_id,
    } = req.body;

    const book = await Book.findByPk(id);

    if (!book) {
      return res.status(404).json({ error: 'Book not found' });
    }

    await book.update({
      title,
      description,
      image,
      release_year,
      price,
      total_page,
      category_id,
    });

    res.json(book);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

// Menghapus buku berdasarkan id
export const deleteBook = async (req, res) => {
  try {
    const { id } = req.params;
    const book = await Book.findByPk(id);

    if (!book) {
      return res.status(404).json({ error: 'Book not found' });
    }

    await book.destroy();
    res.json({ message: 'Book deleted successfully' });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
