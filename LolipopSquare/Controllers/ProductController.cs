using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;

namespace LolipopSquare.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductService _productService;
        private readonly ICategoryService _categoryService;
        private readonly ILogger<ProductController> _logger;

        public ProductController(IProductService productService, ICategoryService categoryService, ILogger<ProductController> logger)
        {
            _productService = productService;
            _categoryService = categoryService;
            _logger = logger;
        }

        [HttpGet]
        public IActionResult Index()
        {
            _logger.LogInformation("action=indexGet");
            try
            {
                var products = _productService.GetAllProducts(4, 1, string.Empty, string.Empty);
                var allCategories = _categoryService.DisplayAllCategories();
                ViewBag.Categories = allCategories;
                return View(products);
            }
            catch (Exception ex)
            {
                _logger.LogError($"action=indexGet, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Index(int actualPage, string search, string category, int pageSize = 4)
        {
            _logger.LogInformation($"action=indexPost, actualPage={actualPage}, search={search}, category={category}, pageSize={pageSize}");
            try
            {
                if (actualPage == 0)
                {
                    actualPage = 1;
                }
                if (search == null)
                {
                    search = String.Empty;
                }
                var products = _productService.GetAllProducts(pageSize, actualPage, search, category);
                var allCategories = _categoryService.DisplayAllCategories();
                ViewBag.Categories = allCategories;
                return View(products);
            }
            catch (Exception ex)
            {
                _logger.LogError($"action=indexPost, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpGet]
        public IActionResult EditProductForm(int id)
        {
            _logger.LogInformation($"action=editProductForm, id={id}");
            try
            {
                var edit = _productService.GetProductById(id);
                return View(edit);
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=editProductForm, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult UpdateProduct(ProductImageVM productImageVM)
        {
            _logger.LogInformation($"action=UpdateProduct, productImageVm='{JsonSerializer.Serialize(productImageVM)}'");
            try
            {
                if (ModelState.IsValid)
                {
                    _productService.UpdateProduct(productImageVM);
                }
                else
                {
                    return View("EditProducForm", productImageVM);
                }
                return RedirectToAction("Index");
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=updateProduct, msg='{ex.Message}'",ex);
                return View("error", new ErrorViewModel());
            }
        }

        [HttpGet]
        public IActionResult AddNewProductForm()
        {
            _logger.LogInformation("action=addNewProductForm");
            try
            {
                var newProductVMAndCategory = _productService.GetNewProductVM();
                return View(newProductVMAndCategory);
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=addNewProductForm msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddNewProduct(AddNewProductVM productVM)
        {
            _logger.LogInformation($"action=addNewProduct, productVm='{JsonSerializer.Serialize(productVM)}'");
            try
            {
                if (ModelState.IsValid)
                {
                    _productService.AddNewProduct(productVM);
                }
                else
                {
                    _logger.LogWarning("action=addNewProduct msg='Product was not added successfully'");
                    return View("AddNewProductForm", productVM);
                }
                return RedirectToAction("Index");
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=addNewProduct, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpGet]
        public IActionResult DeleteProductForm(int productId)
        {
            _logger.LogInformation($"action=deleteProductForm, id={productId}");
            try
            {
                var productToRemove = _productService.GetProductByIdForDelete(productId);
                return View(productToRemove);
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=deleteProductForm, {ex.Message}", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteProduct(int productId)
        {
            _logger.LogInformation($"action=deleteProduct, id={productId}");
            try
            {
                _productService.DeleteProduct(productId);
                return RedirectToAction("Index");
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=deleteProduct, {ex.Message}", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpGet]
        public async Task<IActionResult> DisplayProductDetails(int id)
        {
            _logger.LogInformation($"action=displayProductDetails, id={id}");
            try
            {
                var product = await _productService.GetProductDetails(id);
                return View(product);
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=displayProductDetails, {ex.Message}", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteImg(int id)
        {
            _logger.LogInformation($"action=deleteImg, id={id}");
            try
            {
                _productService.DeleteSingleImg(id);
                return Ok();
            }
           catch(Exception ex)
            {
                _logger.LogError($"action=deleteImg, {ex.Message}", ex);
                return View("Error", new ErrorViewModel());
            }
        }
    }
}