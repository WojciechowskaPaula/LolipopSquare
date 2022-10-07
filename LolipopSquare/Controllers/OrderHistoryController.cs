using LolipopSquare.Data;
using LolipopSquare.Interface;
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
        public IActionResult Index( string filter)
        {
            var userId = _signInManager.UserManager.GetUserId(User);
            var orderHistory = _orderHistoryService.DisplayOrderHistory(userId);
            if(filter == "cancelled")
            {
                var cancelledOrder = orderHistory.Where(x => x.OrderConfirmation == false).ToList();
                return View(cancelledOrder);
            }
            else if(filter == "inProgress")
            {
                var inProgressOrders = orderHistory.Where(x => x.OrderConfirmation == true).ToList();
                return View(inProgressOrders);
            }
            return View(orderHistory);
        }
    }
}
