using LolipopSquare.Interface;
using LolipopSquare.Models.DTO;
using LolipopSquare.Models.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Text.Json;

namespace LolipopSquare.Controllers
{
    public class ShoppingCartController : Controller
    {
        private readonly IShoppingCartService _shoppingCartService;
        private readonly SignInManager<IdentityUser> _signInManager;
        public ShoppingCartController(IShoppingCartService shoppingCartService, SignInManager<IdentityUser> signInManager)
        {
            _shoppingCartService = shoppingCartService;
            _signInManager = signInManager;
        }
        [HttpGet]
        public IActionResult AddItem(int productId, int quantity = 1)
        {
            List<ShoppingCartItem> listOfItems = new List<ShoppingCartItem>();
            var products = HttpContext.Session.GetString("product");
            if(products != null)
            {
                var newProduct = _shoppingCartService.GetProduct(productId);
               listOfItems = JsonSerializer.Deserialize<List<ShoppingCartItem>>(products);
                foreach (var item in listOfItems)
                {
                    if(newProduct.ProductId == item.ProductId)
                    {
                        item.Quantity = item.Quantity + quantity;
                    }
                }
                if (!listOfItems.Exists(x=>x.ProductId == newProduct.ProductId))
                {
                    newProduct.Quantity = quantity;
                    listOfItems.Add(newProduct);
                }
            }
            else
            {
                var product = _shoppingCartService.GetProduct(productId);
                product.Quantity = quantity;
                listOfItems.Add(product);
            }
            
            
            string serializeList = JsonSerializer.Serialize(listOfItems);
            HttpContext.Session.SetString("product", serializeList);
            return RedirectToAction("Index", "Product");
        }

        [HttpPost]
        public IActionResult AddItemForm(int productId, int quantity = 1)
        {
            List<ShoppingCartItem> listOfItems = new List<ShoppingCartItem>();
            var products = HttpContext.Session.GetString("product");
            if (products != null)
            {
                var newProduct = _shoppingCartService.GetProduct(productId);
                listOfItems = JsonSerializer.Deserialize<List<ShoppingCartItem>>(products);
                foreach (var item in listOfItems)
                {
                    if (newProduct.ProductId == item.ProductId)
                    {
                        item.Quantity = item.Quantity + quantity;
                    }
                }
                if (!listOfItems.Exists(x => x.ProductId == newProduct.ProductId))
                {
                    newProduct.Quantity = quantity;
                    listOfItems.Add(newProduct);
                }
            }
            else
            {
                var product = _shoppingCartService.GetProduct(productId);
                product.Quantity = quantity;
                listOfItems.Add(product);
            }


            string serializeList = JsonSerializer.Serialize(listOfItems);
            HttpContext.Session.SetString("product", serializeList);
            return RedirectToAction("Index", "Product");
        }

        [HttpGet]
        [Authorize]
        public IActionResult GetShoppingCartItems()
        {
            decimal totalPrice = 0m;
            var products = HttpContext.Session.GetString("product");
            if (products == null)
            {
                List<ShoppingCartItem> shoppingCartItems = new List<ShoppingCartItem>();
                return View(shoppingCartItems);
            }
            else
            {
                var shoppingCartItems = JsonSerializer.Deserialize<List<ShoppingCartItem>>(products);
                foreach (var item in shoppingCartItems)
                {
                    totalPrice += item.Quantity * item.Price;
                }
                ViewBag.TotalPrice = totalPrice;
                return View(shoppingCartItems);
            }
        }

        [HttpPost]
        public IActionResult DeleteProductFromCart(int id)
        {
            var productsToRemoveFromCart = HttpContext.Session.GetString("product");
            var listOfProducts = JsonSerializer.Deserialize<List<ShoppingCartItem>>(productsToRemoveFromCart);
            listOfProducts.RemoveAll(x => x.ProductId == id);
            var listOfProductsAsJson = JsonSerializer.Serialize(listOfProducts);
            HttpContext.Session.SetString("product", listOfProductsAsJson);
            return RedirectToAction("GetShoppingCartItems");
        }

        [HttpPost]
        public IActionResult EditShoppingCartQuantity(int id, int quantity)
        {
            var productsFromSession= HttpContext.Session.GetString("product");
            var listOfProduct = JsonSerializer.Deserialize<List<ShoppingCartItem>>(productsFromSession);
            listOfProduct.Where(x => x.ProductId == id).FirstOrDefault().Quantity = quantity;
            var listOfProductsAsJson = JsonSerializer.Serialize(listOfProduct);
            HttpContext.Session.SetString("product", listOfProductsAsJson);
            return Ok();
        }

        [HttpGet]
        public IActionResult AddOrder(List<ShoppingCartItem> shoppingCartItems)
        {
            var productsFromSession = HttpContext.Session.GetString("product");
            var listOfProduct = JsonSerializer.Deserialize<List<ShoppingCartItem>>(productsFromSession);
            var userId = _signInManager.UserManager.GetUserId(User);
             var vm = _shoppingCartService.AddOrder(listOfProduct, userId);
            return View(vm);
        }

        [HttpPost]
        public IActionResult AddUserData(OrderSummaryVM orderSummaryVM)
        {
            var productsFromSession = HttpContext.Session.GetString("product");
            var listOfProduct = JsonSerializer.Deserialize<List<ShoppingCartItem>>(productsFromSession);
            var userId = _signInManager.UserManager.GetUserId(User);
            var orderToConfirm = _shoppingCartService.AddDeliveryData(userId, orderSummaryVM);
            HttpContext.Session.Clear();
            return RedirectToAction("Index","Product");
        }
    }
}
