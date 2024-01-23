import Book from '../models/BookModel.js';

// Menampilkan seluruh buku
export const getBooks = async (req, res) => {
  try {
    if (Object.keys(req.query).length === 0) {
      // Jika tidak ada query parameters, tampilkan semua buku tanpa filter
      const allBooks = await Book.findAll();
      res.json(allBooks);
    } else {
      // Jika ada query parameters, gunakan fungsi filterBooks untuk mendapatkan buku yang difilter
      const filteredBooks = await Book.filterBooks(req.query);
      res.json(filteredBooks);
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal Server Error' });
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

    // Cek apakah buku dengan ID tersebut ada dalam database
    const existingBook = await Book.findByPk(id);

    if (!existingBook) {
      return res.status(404).json({ error: 'Buku tidak ditemukan' });
    }

    // Lakukan operasi PATCH pada buku
    await existingBook.update({
      title: title || existingBook.title,
      description: description || existingBook.description,
      image: image || existingBook.image,
      release_year: release_year || existingBook.release_year,
      price: price || existingBook.price,
      total_page: total_page || existingBook.total_page,
      category_id: category_id || existingBook.category_id,
    });

    // Kirim respons dengan buku yang telah diperbarui
    res.json(existingBook);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal Server Error' });
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
