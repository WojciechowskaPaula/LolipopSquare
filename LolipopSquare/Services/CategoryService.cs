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
            editCategoryVm.Id = category.Id;
            editCategoryVm.Name = category.Name;
            return editCategoryVm;
        }

        public Category UpdateCategory(EditCategoryVM editCategoryVM)
        {
            var categoryToUpdate = _applicationDb.Categories.Where(x => x.Id == editCategoryVM.Id).FirstOrDefault();
            categoryToUpdate.Id = editCategoryVM.Id;
            categoryToUpdate.Name = editCategoryVM.Name;
            _applicationDb.SaveChanges();
            return categoryToUpdate;
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
    }
}
