using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace LolipopSquare.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductService _productService;

        public ProductController(IProductService productService)
        {
            _productService = productService;
        }

        [HttpGet]
        public IActionResult Index()
        {
            var products = _productService.GetAllProducts(2, 1, string.Empty);
            return View(products);
        } 
        [HttpPost]
        public IActionResult Index(int pageSize, int actualPage, string search)
        {
            if(actualPage == 0)
            {
                actualPage = 1;
            }
            if(search == null)
            {
                search = String.Empty;
            }
            var products = _productService.GetAllProducts(pageSize, actualPage, search);
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
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult AddNewProductForm()
        {
            var newProductVMAndCategory =_productService.GetNewProductVM();
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
        public IActionResult DeleteImg(int id)
        {
            _productService.DeleteSingleImg(id);
            return Ok();
        }
    }
}