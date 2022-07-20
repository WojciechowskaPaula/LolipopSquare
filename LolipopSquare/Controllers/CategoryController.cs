using LolipopSquare.Interface;
using Microsoft.AspNetCore.Mvc;

namespace LolipopSquare.Controllers
{
    public class CategoryController : Controller
    {
        private readonly ICategoryService _categoryService;

        public CategoryController(ICategoryService categoryService)
        {
            _categoryService = categoryService;
        }

        [HttpGet]
        public IActionResult Index()
        {
            var listOfCategories = _categoryService.DisplayAllCategories();
            return View(listOfCategories);
        }
    }
}
