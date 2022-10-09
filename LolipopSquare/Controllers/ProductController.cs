using LolipopSquare.Interface;
using LolipopSquare.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace LolipopSquare.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductService _productService;
        private readonly ICategoryService _categoryService;

        public ProductController(IProductService productService, ICategoryService categoryService)
        {
            _productService = productService;
            _categoryService = categoryService;
        }

        [HttpGet]
        public IActionResult Index()
        {
            var products = _productService.GetAllProducts(4, 1, string.Empty, string.Empty);
            var allCategories = _categoryService.DisplayAllCategories();
            ViewBag.Categories = allCategories;
            return View(products);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Index(int actualPage, string search, string category, int pageSize = 4)
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

        [HttpGet]
        public IActionResult EditProductForm(int id)
        {
            var edit = _productService.GetProductById(id);
            return View(edit);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult UpdateProduct(ProductImageVM productImageVM)
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

        [HttpGet]
        public IActionResult AddNewProductForm()
        {
            var newProductVMAndCategory = _productService.GetNewProductVM();
            return View(newProductVMAndCategory);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddNewProduct(AddNewProductVM productVM)
        {
            if (ModelState.IsValid)
            {
                _productService.AddNewProduct(productVM);
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult DeleteProductForm(int productId)
        {
            var productToRemove = _productService.GetProductByIdForDelete(productId);
            return View(productToRemove);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteProduct(int productId)
        {
            _productService.DeleteProduct(productId);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<IActionResult> DisplayProductDetails(int id)
        {
            var product = await _productService.GetProductDetails(id);
            return View(product);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteImg(int id)
        {
            _productService.DeleteSingleImg(id);
            return Ok();
        }
    }
}