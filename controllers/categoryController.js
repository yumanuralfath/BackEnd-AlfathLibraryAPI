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
// Controller untuk melakukan operasi PATCH pada kategori berdasarkan ID
export const updateKategori = async (req, res) => {
  try {
    const { id } = req.params;
    const { name } = req.body;

    // Cek apakah kategori dengan ID tersebut ada dalam database
    const existingCategory = await CategorySchema.findByPk(id);

    if (!existingCategory) {
      return res.status(404).json({ error: 'Kategori tidak ditemukan' });
    }

    // Lakukan operasi PATCH pada kategori
    await existingCategory.update({
      name: name || existingCategory.name,
    });

    // Kirim respons dengan kategori yang telah diperbarui
    res.json(existingCategory);
  } catch (error) {
    console.error(error);
    res
      .status(500)
      .json({ error: 'Internal Server Error', details: error.message });
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
