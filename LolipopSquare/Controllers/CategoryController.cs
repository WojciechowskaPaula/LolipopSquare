using LolipopSquare.Interface;
using LolipopSquare.Models.ViewModels;
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

        [HttpGet]
        public IActionResult EditCategoryForm(int id)
        {
            var categoryToEdit = _categoryService.GetCategoryById(id);
            return View(categoryToEdit);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult UpdateCategory(EditCategoryVM editCategoryVM)
        {
            var categoryToUpdate = _categoryService.UpdateCategory(editCategoryVM);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult AddNewCategoryForm()
        {
            AddNewCategoryVM newCategoryVM = new AddNewCategoryVM();
            return View(newCategoryVM);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddNew(AddNewCategoryVM addNewCategoryVM)
        {
            _categoryService.AddNewCategory(addNewCategoryVM);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult DeleteCategory(int id)
        {
            var categoryToDelete = _categoryService.GetCategoryByIdForDelete(id);
            return View(categoryToDelete);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(int id)
        {
            _categoryService.DeleteCategory(id);
            return RedirectToAction("Index");
        }


    }
}
