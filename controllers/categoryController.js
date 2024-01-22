import Category from '../models/CategoryModel.js';

//Membuat Category Baru
export const createCategory = async (req, res) => {
  try {
    const category = await Category.create(req.body);
    res.status(200).json(category);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

//Menampilkan Seluruh Kategori
export const getCategories = async (req, res) => {
  try {
    const categories = await Category.find();
    res.status(200).json(categories);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

//Menampilkan Seluruh Kategori berdasarkan ID
export const getCategoriesByID = async (req, res) => {
  try {
    const categories = await Category.findById({id: req.params.id});
    res.status(200).json(categories);
  } catch (error) {
    res.status(404).json({ message: error.message });
  }
};

//Update Kategori yang sudah ada berdasarkan ID
export const updateKategori = async (req, res) => {
  try {
    const { id } = req.params;
    const kategori = await Category.findByIdAndUpdate({ id }, req.body, {
      new: true,
    });
    res.status(200).json(kategori);
  } catch (error) {
    res.status(404).json({ message: 'Kategori tidak ditemukan' });
  }
};

//Menghapus Kategori yang ada
export const deleteKategori = async (req, res) => {
  try {
    const { id } = req.params;
    await Category.findByIdAndDelete({ id });
    res.status(204).send();
  } catch (error) {
    res.status(404).json({ message: 'Kategori tidak ditemukan' });
  }
};
