using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.DTO;
using LolipopSquare.Models.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;

namespace LolipopSquare.Controllers
{
    public class ShoppingCartController : Controller
    {
        private readonly IShoppingCartService _shoppingCartService;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly ILogger<ShoppingCartController> _logger;

        public ShoppingCartController(IShoppingCartService shoppingCartService, SignInManager<ApplicationUser> signInManager, ILogger<ShoppingCartController> logger)
        {
            _shoppingCartService = shoppingCartService;
            _signInManager = signInManager;
            _logger = logger;
        }

        //Add to cart from Index
        [HttpGet]
        public IActionResult AddItem(int productId, int quantity = 1)
        {
            _logger.LogInformation($"action=addItem, productId={productId}, quantity={quantity}");
            try
            {
                List<ShoppingCartItem> listOfItems = new List<ShoppingCartItem>();
                var products = HttpContext.Session.GetString("product");
                if (products != null)
                {
                    var newProduct = _shoppingCartService.GetProduct(productId);
                    listOfItems = JsonSerializer.Deserialize<List<ShoppingCartItem>>(products);
                    if (listOfItems != null)
                    {
                        foreach (var item in listOfItems)
                        {
                            if (newProduct.ProductId == item.ProductId)
                            {
                                item.Quantity += quantity;
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
                        listOfItems = new List<ShoppingCartItem>();
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
            catch (Exception ex)
            {
                _logger.LogError($"action=addItem, {ex.Message}", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        //Add to cart from Details
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddItemForm(int productId, int quantity = 1)
        {
            _logger.LogInformation($"action=AddItemForm, productId='{productId}', quantity='{quantity}'");

            try
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
                                item.Quantity += quantity;
                                _logger.LogInformation($"action=AddItemForm, msg='Increase the quantity of a product that was already in the shopping cart'");
                            }
                        }
                        if (!listOfItems.Exists(x => x.ProductId == newProduct.ProductId))
                        {
                            newProduct.Quantity = quantity;
                            listOfItems.Add(newProduct);
                            _logger.LogInformation($"action=AddItemForm, msg='Adding a new product to the cart'");
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
                    return RedirectToAction("GetShoppingCartItems");
            }
            catch (Exception ex)
            {
                _logger.LogError($"action=addItemForm msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }

        }

        [HttpGet]
        [Authorize]
        public IActionResult GetShoppingCartItems()
        {
            _logger.LogInformation("action=getShoppingCartItems");
            try
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
            catch (Exception ex)
            {
                _logger.LogError($"action=getShoppingCartItems msg='{ ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        public IActionResult DeleteProductFromCart(int id)
        {
            _logger.LogInformation($"action=deleteProductFromCart, id={id}");
            try
            {
                var productsToRemoveFromCart = HttpContext.Session.GetString("product");
                var listOfProducts = JsonSerializer.Deserialize<List<ShoppingCartItem>>(productsToRemoveFromCart);
                listOfProducts.RemoveAll(x => x.ProductId == id);
                var listOfProductsAsJson = JsonSerializer.Serialize(listOfProducts);
                HttpContext.Session.SetString("product", listOfProductsAsJson);
                return RedirectToAction("GetShoppingCartItems");
            }

            catch (Exception ex)
            {
                _logger.LogError($"action=deleteProductFromCart, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        public IActionResult EditShoppingCartQuantity(int id, int quantity)
        {
            _logger.LogInformation($"action=editShoppingCartQuantity id={id}, quantity={quantity}");

            try
            {
                var productsFromSession = HttpContext.Session.GetString("product");
                var listOfProduct = JsonSerializer.Deserialize<List<ShoppingCartItem>>(productsFromSession);
                listOfProduct.Where(x => x.ProductId == id).FirstOrDefault().Quantity = quantity;
                var listOfProductsAsJson = JsonSerializer.Serialize(listOfProduct);
                HttpContext.Session.SetString("product", listOfProductsAsJson);
                return Ok();
            }

            catch (Exception ex)
            {
                _logger.LogError($"action=editShoppingCartQuantity msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpGet]
        public IActionResult AddOrder(List<ShoppingCartItem> shoppingCartItems)
        {
            _logger.LogInformation($"action=addOrder, shoppingCartItems={JsonSerializer.Serialize(shoppingCartItems)}");
            try
            {
                var productsFromSession = HttpContext.Session.GetString("product");
                var listOfProduct = JsonSerializer.Deserialize<List<ShoppingCartItem>>(productsFromSession);
                var userId = _signInManager.UserManager.GetUserId(User);
                var vm = _shoppingCartService.AddOrder(listOfProduct, userId);
                return View(vm);
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=addOrder, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddUserData(OrderSummaryVM orderSummaryVM)
        {
            _logger.LogInformation($"action=addUserData, orderSummaryVM={JsonSerializer.Serialize(orderSummaryVM)}");
            try
            {
                if (ModelState.IsValid)
                {
                    var productsFromSession = HttpContext.Session.GetString("product");
                    var listOfProduct = JsonSerializer.Deserialize<List<ShoppingCartItem>>(productsFromSession);
                    var userId = _signInManager.UserManager.GetUserId(User);
                    var orderToConfirm = _shoppingCartService.AddDeliveryData(userId, orderSummaryVM);
                    HttpContext.Session.Clear();
                    return RedirectToAction("Index", "Product");
                }
                else
                {
                    return View("AddOrder", orderSummaryVM);
                }
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=addUserData, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }
    }
}