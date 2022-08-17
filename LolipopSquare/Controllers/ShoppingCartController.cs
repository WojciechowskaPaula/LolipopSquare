using LolipopSquare.Interface;
using LolipopSquare.Models.DTO;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;

namespace LolipopSquare.Controllers
{
    public class ShoppingCartController : Controller
    {
        private readonly IShoppingCartService _shoppingCartService;
        public ShoppingCartController(IShoppingCartService shoppingCartService)
        {
            _shoppingCartService = shoppingCartService;
        }
        [HttpGet]
        public IActionResult AddItem(int productId)
        {
            List<ShoppingCartItem> listOfItems = new List<ShoppingCartItem>();
            var products = HttpContext.Session.GetString("product");
            if(products != null)
            {
                var newProduct = _shoppingCartService.GetProduct(productId);
               listOfItems = JsonSerializer.Deserialize<List<ShoppingCartItem>>(products);
               listOfItems.Add(newProduct);

            }
            else
            {
                var product = _shoppingCartService.GetProduct(productId);
                listOfItems.Add(product);
            }
            
            
            string serializeList = JsonSerializer.Serialize(listOfItems);
            HttpContext.Session.SetString("product", serializeList);
            return RedirectToAction("Index", "Product");
        }

        [HttpGet]
        public IActionResult GetShoppingCartItems()
        {

            var products = HttpContext.Session.GetString("product");
            if(products == null)
            {
                List<ShoppingCartItem> shoppingCartItems = new List<ShoppingCartItem>();
                return View (shoppingCartItems);
            }
            else
            {
                var shoppingCartItems = JsonSerializer.Deserialize<List<ShoppingCartItem>>(products);
                return View(shoppingCartItems);
            }

           
        }
    }
}
