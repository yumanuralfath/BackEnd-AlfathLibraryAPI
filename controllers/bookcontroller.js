import Book from '../models/BookModel.js';
import Users from '../models/UserModel.js';
import { Op } from 'sequelize';

// Menampilkan seluruh buku
export const getBooks = async (req, res) => {
  try {
    if (req.role === 'admin') {
      // Menampilkan seluruh buku jika admin login
      const allBooks = await Book.findAll({
        attributes: [
          'id',
          'uuid',
          'title',
          'description',
          'image',
          'release_year',
          'price',
          'total_page',
          'category_id',
          'thickness',
          'createdAt',
          'updatedAt',
        ],
        include: [
          {
            model: Users,
            attributes: ['name', 'email'],
          },
        ],
      });
      res.status(200).json(allBooks);
    } else {
      // Menampilkan buku berdasarkan userId jika bukan admin
      let response;

      if (Object.keys(req.query).length === 0) {
        // Jika tidak ada query parameters, tampilkan buku berdasarkan userId
        response = await Book.findAll({
          attributes: [
            'id',
            'uuid',
            'title',
            'description',
            'image',
            'release_year',
            'price',
            'total_page',
            'category_id',
            'thickness',
            'createdAt',
            'updatedAt',
          ],
          where: {
            userId: req.userId,
          },
          include: [
            {
              model: Users,
              attributes: ['name', 'email'],
            },
          ],
        });
      } else {
        // Jika ada query parameters, gunakan fungsi filterBooks untuk mendapatkan buku yang difilter
        response = await Book.filterBooks(req.query);
      }

      res.status(200).json(response);
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ msg: error.message });
  }
};

//Menampilkan buku sesuai ID
export const getBookById = async (req, res) => {
  try {
    const book = await Book.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!book) return res.status(404).json({ msg: 'Buku tidak ditemukan' });
    if (req.role === 'admin') {
      // Menampilkan seluruh buku jika admin login
      const allBooks = await Book.findOne({
        attributes: [
          'id',
          'uuid',
          'title',
          'description',
          'image',
          'release_year',
          'price',
          'total_page',
          'category_id',
          'thickness',
          'createdAt',
          'updatedAt',
        ],
        where: {
          id: book.id,
        },
        include: [
          {
            model: Users,
            attributes: ['name', 'email'],
          },
        ],
      });
      res.status(200).json(allBooks);
    } else {
      // Menampilkan buku berdasarkan userId jika bukan admin
      let response;

      if (Object.keys(req.query).length === 0) {
        // Jika tidak ada query parameters, tampilkan buku berdasarkan userId
        response = await Book.findOne({
          attributes: [
            'id',
            'uuid',
            'title',
            'description',
            'image',
            'release_year',
            'price',
            'total_page',
            'category_id',
            'thickness',
            'createdAt',
            'updatedAt',
          ],
          where: {
            [Op.and]: [{ id: book.id }, { userId: req.userId }],
          },
          include: [
            {
              model: Users,
              attributes: ['name', 'email'],
            },
          ],
        });
      } else {
        // Jika ada query parameters, gunakan fungsi filterBooks untuk mendapatkan buku yang difilter
        response = await Book.filterBooks(req.query);
      }

      res.status(200).json(response);
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({ msg: error.message });
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
      userId: req.userId,
    });
    res.status(201).json({ msg: 'Buku Berhasil Ditambahkan' });
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
    res.status(200).json({ msg: 'Buku berhasil di edit' });
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
