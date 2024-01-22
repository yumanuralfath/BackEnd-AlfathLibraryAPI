import Category from '../models/CategoryModel.js';

export const getCategory = async (req, res) => { 
  try {
    const categories = await Category.find(); 
    res.json(categories);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
}