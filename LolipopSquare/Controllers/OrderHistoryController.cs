using LolipopSquare.Interface;
using LolipopSquare.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace LolipopSquare.Controllers
{
    public class OrderHistoryController : Controller
    {
        private readonly IOrderHistoryService _orderHistoryService;
        private readonly SignInManager<IdentityUser> _signInManager;

        public OrderHistoryController(IOrderHistoryService orderHistoryService, SignInManager<IdentityUser> signInManager)
        {
            _orderHistoryService = orderHistoryService;
            _signInManager = signInManager;
        }

        [HttpGet]
        public IActionResult Index()
        {
            var userId = _signInManager.UserManager.GetUserId(User);
            var orderHistory = _orderHistoryService.DisplayOrderHistory(userId);
            return View(orderHistory);
        }
    }
}
