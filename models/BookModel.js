import { Sequelize } from 'sequelize';
import db from '../config/Database.js';
import CategorySchema from './CategoryModel.js';

const { DataTypes } = Sequelize;

const Book = db.define(
  'CollectionBook',
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

Book.belongsTo(CategorySchema, { foreignKeys: 'category_id' });
CategorySchema.hasMany(Book, { foreignKeys: 'category_id' });

export default Book;
