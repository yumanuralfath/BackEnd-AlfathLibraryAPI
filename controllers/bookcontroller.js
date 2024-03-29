import Book from '../models/BookModel.js';
import Users from '../models/UserModel.js';
import { Op } from 'sequelize';

// Menampilkan seluruh buku
export const getBooks = async (req, res) => {
  try {
    if (req.role === 'admin') {
      let response;

      if (Object.keys(req.query).length === 0) {
        // If no query parameters, show all books
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
          include: [
            {
              model: Users,
              attributes: ['name', 'email'],
            },
          ],
        });
      } else {
        // If there are query parameters, use the filterBooks function
        response = await Book.filterBooks(req.query);
      }

      res.status(200).json(response);
    } else {
      // Non-admin users or requests without query parameters
      let response;

      if (Object.keys(req.query).length === 0) {
        // If no query parameters, show books based on userId
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
        // If there are query parameters, use the filterBooks function
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
    let whereCondition;

    // Check if the parameter is a valid UUID
    if (
      /^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/.test(
        req.params.id
      )
    ) {
      whereCondition = { uuid: req.params.id };
    } else if (!isNaN(req.params.id)) {
      // If it's a numeric ID, use it
      whereCondition = { id: req.params.id };
    } else {
      return res.status(400).json({ msg: 'Invalid ID format' });
    }

    const book = await Book.findOne({
      where: whereCondition,
    });

    if (!book) return res.status(404).json({ msg: 'Buku tidak ditemukan' });

    if (req.role === 'admin') {
      // Admin sees all book details
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
        where: { id: book.id },
        include: [
          {
            model: Users,
            attributes: ['name', 'email'],
          },
        ],
      });
      res.status(200).json(allBooks);
    } else {
      // Non-admin users see book details based on userId
      let response;

      if (Object.keys(req.query).length === 0) {
        // If no query parameters, show book based on userId
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
        // If there are query parameters, use the filterBooks function to get the filtered books
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
