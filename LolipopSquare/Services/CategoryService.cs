using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;

namespace LolipopSquare.Services
{
    public class CategoryService : ICategoryService
    {
        private readonly ApplicationDbContext _applicationDb;

        public CategoryService(ApplicationDbContext applicationDb)
        {
            _applicationDb = applicationDb;
        }

        public List<Category> DisplayAllCategories()
        {
            var listOfCategories = _applicationDb.Categories.ToList();
            return listOfCategories;
        }

        public EditCategoryVM GetCategoryById(int id)
        {
            var category = _applicationDb.Categories.Where(x => x.Id == id).FirstOrDefault();
            EditCategoryVM editCategoryVm = new EditCategoryVM();
            if (category != null)
            {
                editCategoryVm.Id = category.Id;
                editCategoryVm.Name = category.Name;
            }
            return editCategoryVm;
        }

        public Category UpdateCategory(EditCategoryVM editCategoryVM)
        {
            var categoryToUpdate = _applicationDb.Categories.Where(x => x.Id == editCategoryVM.Id).FirstOrDefault();
            if(categoryToUpdate != null)
            {
                categoryToUpdate.Id = editCategoryVM.Id;
                categoryToUpdate.Name = editCategoryVM.Name;
                _applicationDb.SaveChanges();
                return categoryToUpdate;
            }
            throw new Exception("categoryToUpdate cannot be null");
        }

        public Category AddNewCategory(AddNewCategoryVM newCategoryVM)
        {
            var newCategory = new Category();
            newCategory.Id = newCategoryVM.Id;
            newCategory.Name = newCategoryVM.Name;
            _applicationDb.Add(newCategory);
            _applicationDb.SaveChanges();
            return (newCategory);
        }

        public DeleteCategoryVM GetCategoryByIdForDelete(int id)
        {
            var category = _applicationDb.Categories.Where(x => x.Id == id).FirstOrDefault();
            DeleteCategoryVM deleteCategoryVM = new DeleteCategoryVM();
            if(category != null)
            {
                deleteCategoryVM.Id = category.Id;
                deleteCategoryVM.Name = category.Name;
                return deleteCategoryVM;
            }
            return deleteCategoryVM;
        }

        public void DeleteCategory(int id)
        {
           var categoryToRemove = _applicationDb.Categories.Where(x => x.Id == id).FirstOrDefault();
            _applicationDb.Categories.Remove(categoryToRemove);
            _applicationDb.SaveChanges();
        }

        
    }

}
