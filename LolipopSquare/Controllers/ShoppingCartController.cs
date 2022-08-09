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
            var product = _shoppingCartService.GetProduct(productId);
            listOfItems.Add(product);
            string serializeList = JsonSerializer.Serialize(listOfItems);
            HttpContext.Session.SetString("product", serializeList);
            return View();
        }
    }
}
