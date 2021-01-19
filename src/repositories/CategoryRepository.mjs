/**
 * CategoryRepository with DictionaryRepository as backend
 */
export default class CategoryRepository {
  constructor({ dictionaryRepository }) {
    this.dictionaryRepository = dictionaryRepository;
    this.dictionaryCode = 'CATEGORY';
    this.dictionaryRows = null;
  }
  async getDictionaryRows() {
    if (this.dictionaryRows == null) {
      this.dictionaryRows = this.dictionaryRepository.findByParentCode(this.dictionaryCode, 'id');
    }
    return this.dictionaryRows;
  }
  async getCategoryNames() {
    const rows = await this.getDictionaryRows();
    const result = rows.map((row) => row.name);
    return result;
  }
}
