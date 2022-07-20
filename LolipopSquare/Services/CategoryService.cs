using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models;

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
    }
}
