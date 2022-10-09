using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;

namespace LolipopSquare.Controllers
{
    public class CategoryController : Controller
    {
        private readonly ICategoryService _categoryService;
        private readonly ILogger _logger;

        public CategoryController(ICategoryService categoryService, ILogger logger)
        {
            _categoryService = categoryService;
            _logger = logger;
        }

        [HttpGet]
        public IActionResult Index()
        {
            _logger.LogInformation("action=index");
            try
            {
                var listOfCategories = _categoryService.DisplayAllCategories();
                _logger.LogInformation($"action=index categoryCount={listOfCategories.Count}");
                return View(listOfCategories);
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=index, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpGet]
        public IActionResult EditCategoryForm(int id)
        {
            _logger.LogInformation($"action=editCategoryForm, id={id}");
            try
            {
                var categoryToEdit = _categoryService.GetCategoryById(id);
                if(categoryToEdit != null)
                {
                    _logger.LogInformation($"action=editCategoryForm, msg='category with id={id} was found'");
                    return View(categoryToEdit);
                }
                else
                {
                    _logger.LogWarning($"action=editCategoryForm, msg='category with id={id} was not found'");
                    return View("Error", new ErrorViewModel());
                }
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=index, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult UpdateCategory(EditCategoryVM editCategoryVM)
        {
            _logger.LogInformation($"action=updatedCategory, vm={JsonSerializer.Serialize(editCategoryVM)}");
            try
            {
                if (ModelState.IsValid)
                {
                    _categoryService.UpdateCategory(editCategoryVM);
                }
                else
                {
                    return View("EditCategoryForm", editCategoryVM);
                }
                return RedirectToAction("Index");
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=updatedCategory, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpGet]
        public IActionResult AddNewCategoryForm()
        {
            _logger.LogInformation("action=addNewCategoryForm");
            try
            {
                AddNewCategoryVM newCategoryVM = new AddNewCategoryVM();
                return View(newCategoryVM);
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=addNewCategoryForm msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddNew(AddNewCategoryVM addNewCategoryVM)
        {
            _logger.LogInformation($"action=addNew, vm={JsonSerializer.Serialize(addNewCategoryVM)}");
            try
            {
                if (ModelState.IsValid)
                {
                    _categoryService.AddNewCategory(addNewCategoryVM);
                }
                else
                {
                    return View("AddNewCategoryForm", addNewCategoryVM);
                }
                return RedirectToAction("Index");
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=addNew, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpGet]
        public IActionResult DeleteCategory(int id)
        {
            _logger.LogInformation($"action=deleteCategory, id={id}");
            try
            {
                var categoryToDelete = _categoryService.GetCategoryByIdForDelete(id);
                return View(categoryToDelete);
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=deleteCategory, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(int id)
        {
            _logger.LogInformation($"action=delete, id={id}");
            try
            {
                _categoryService.DeleteCategory(id);
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                _logger.LogError($"action=delete msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }
    }
}
