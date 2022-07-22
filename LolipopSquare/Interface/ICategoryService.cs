using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;

namespace LolipopSquare.Interface
{
    public interface ICategoryService
    {
        List<Category> DisplayAllCategories();
        EditCategoryVM GetCategoryById(int id);
        Category UpdateCategory(EditCategoryVM editCategoryVM);
        Category AddNewCategory(AddNewCategoryVM newCategoryVM);
        DeleteCategoryVM GetCategoryByIdForDelete(int id);
        void DeleteCategory(int id);
    }
}
