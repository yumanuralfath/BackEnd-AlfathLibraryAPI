import { Sequelize, DataTypes } from 'sequelize';
import db from '../config/Database.js';
import Category from './CategoryModel.js';
import Users from './UserModel.js';

const Book = db.define(
  'collectionbooks',
  {
    title: { type: DataTypes.STRING, allowNull: false },
    description: { type: DataTypes.STRING, allowNull: false },
    image: { type: DataTypes.STRING, allowNull: false },
    release_year: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        isInt: true,
        min: 1980,
        max: 2021,
      },
    },
    price: { type: DataTypes.STRING, allowNull: false },
    total_page: { type: DataTypes.INTEGER, allowNull: false },
    category_id: { type: DataTypes.INTEGER, allowNull: false },
    thickness: { type: DataTypes.STRING },
    userId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
  },
  {
    hooks: {
      beforeValidate: (book, options) => {
        // Validasi dan konversi thickness berdasarkan total_page
        if (book.total_page <= 100) {
          book.thickness = 'tipis';
        } else if (book.total_page <= 200) {
          book.thickness = 'sedang';
        } else {
          book.thickness = 'tebal';
        }
      },
    },
    instanceMethods: {
      toJSON: function () {
        // Hanya menyertakan properti yang diizinkan saat mengonversi objek model menjadi JSON
        return {
          id: this.id,
          title: this.title,
          description: this.description,
          image: this.image,
          release_year: this.release_year,
          price: this.price,
          total_page: this.total_page,
          category_id: this.category_id,
          thickness: this.thickness,
        };
      },
    },
  }
);

Book.belongsTo(Category, { foreignKey: 'category_id' });
Category.hasMany(Book, { foreignKey: 'category_id' });

Users.hasMany(Book, { foreignKey: 'userId' });
Book.belongsTo(Users, { foreignKey: 'userId' });

Book.filterBooks = async (queryParams) => {
  const filterOptions = {
    where: {},
    order: [],
  };

  // Filter by title (case insensitive)
  if (queryParams.title) {
    filterOptions.where.title = {
      [Sequelize.Op.like]: `%${queryParams.title}%`,
    };
  }

  // Filter by minYear
  if (queryParams.minYear) {
    filterOptions.where.release_year = {
      [Sequelize.Op.gte]: queryParams.minYear,
    };
  }

  // Filter by maxYear
  if (queryParams.maxYear) {
    filterOptions.where.release_year = {
      ...filterOptions.where.release_year,
      [Sequelize.Op.lte]: queryParams.maxYear,
    };
  }

  // Filter by minPage
  if (queryParams.minPage) {
    filterOptions.where.total_page = {
      [Sequelize.Op.gte]: queryParams.minPage,
    };
  }

  // Filter by maxPage
  if (queryParams.maxPage) {
    filterOptions.where.total_page = {
      ...filterOptions.where.total_page,
      [Sequelize.Op.lte]: queryParams.maxPage,
    };
  }

  // Sort by title
  if (queryParams.sortByTitle === 'asc') {
    filterOptions.order.push(['title', 'ASC']);
  } else if (queryParams.sortByTitle === 'desc') {
    filterOptions.order.push(['title', 'DESC']);
  }

  // Fetch the filtered books
  const filteredBooks = await Book.findAll(filterOptions);

  return filteredBooks;
};

export default Book;
