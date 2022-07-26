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
            var products = _productService.GetAllProducts();
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
        public IActionResult UpdateProduct(ProductDetailsVM detailVM)
        {
            _productService.UpdateProduct(detailVM);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult AddNewProductForm()
        {
            AddNewProductVM productVM = new AddNewProductVM();
            return View(productVM);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddNewProduct(AddNewProductVM productVM)
        {
            _productService.AddNewProduct(productVM);
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
        public IActionResult DisplayProductDetails(int id)
        {
            var product =_productService.GetProductDetails(id);
            return View(product);
        }
    }
}