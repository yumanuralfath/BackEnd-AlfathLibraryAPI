import CategorySchema from '../models/CategoryModel.js';

//Membuat Category Baru
export const createCategory = async (req, res) => {
  try {
    const category = await CategorySchema.create(req.body);
    res.status(200).json(category);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

//Menampilkan Seluruh Kategori
export const getCategories = async (req, res) => {
  try {
    const categories = await CategorySchema.findAll();
    res.status(200).json(categories);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

//Menampilkan Seluruh Kategori berdasarkan ID
export const getCategoriesByID = async (req, res) => {
  try {
    const category = await CategorySchema.findByPk(req.params.id);
    if (!category) {
      res.status(404).json({ message: 'Category not found' });
      return;
    }
    res.status(200).json(category);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

//Update Kategori yang sudah ada berdasarkan ID
export const updateKategori = async (req, res) => {
  const categoryId = req.params.id;

  try {
    // Cari kategori berdasarkan ID
    const category = await CategorySchema.findByPk(categoryId);

    // Jika kategori tidak ditemukan, kirim respons 404
    if (!category) {
      res.status(404).json({ message: 'Kategori tidak ditemukan' });
      return;
    }

    // Update kategori
    const [updatedRowsCount] = await CategorySchema.update(req.body, {
      where: { id: categoryId },
    });

    if (updatedRowsCount === 0) {
      // Jika tidak ada baris yang diupdate, kirim respons 404
      return res.status(404).json({ message: 'Kategori tidak ditemukan' });
    }

    // Jika ada baris yang diupdate, temukan kategori yang baru di database
    const updatedCategory = await CategorySchema.findByPk(categoryId);

    // Kirim respons dengan data kategori yang sudah diupdate
    res.status(200).json(updatedCategory.get({ plain: true }));
  } catch (error) {
    // Tangani kesalahan jika terjadi
    console.error('Error updating category:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
};

//Menghapus Kategori yang ada
export const deleteKategori = async (req, res) => {
  try {
    // Temukan kategori berdasarkan ID
    const category = await CategorySchema.findByPk(req.params.id);

    // Jika kategori tidak ditemukan, kirim respons 404
    if (!category) {
      return res.status(404).json({ message: 'Kategori tidak ditemukan' });
    }

    // Hapus kategori
    await category.destroy();

    // Kirim respons dengan status 204 (No Content)
    res.status(204).send();
  } catch (error) {
    // Tangani kesalahan jika terjadi
    console.error('Error deleting category:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
};
