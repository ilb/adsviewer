import transliterate from 'transliterate';

export default class CategoryService {
  constructor({ categoryRepository }) {
    this.categoryRepository = categoryRepository;
    this.categoriesMap = null;
  }

  async fillCategoriesMap() {
    if (this.categoriesMap == null) {
      const categories = await this.categoryRepository.getCategoryNames();
      // eslint-disable-next-line no-undef
      this.categoriesMap = new Map();
      categories.forEach((item) => {
        this.categoriesMap.set(item.name, item.id);
      });
    }
  }
  async getCategoryIdByName(name, sourceId) {
    let id = null;
    if (name) {
      await this.fillCategoriesMap();
      id = this.categoriesMap.get(name);
      // console.log({ id, name });
      if (!id) {
        const code = transliterate(name).replace(/\s/g, '_');
        const data = { id: sourceId, code, name, avitoId: sourceId }; // , active: true
        console.log('create new category', data);
        const category = this.categoryRepository.save(data);
        id = category.id;
        this.categoriesMap.set(name, id);
      }
    }
    return id;
  }
}
