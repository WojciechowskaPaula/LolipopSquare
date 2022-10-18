using LolipopSquare.Interface;
using LolipopSquare.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace LolipopSquare.Controllers
{
    public class OrderHistoryController : Controller
    {
        private readonly IOrderHistoryService _orderHistoryService;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly ILogger <OrderHistoryController>_logger;
        

        public OrderHistoryController(IOrderHistoryService orderHistoryService, SignInManager<ApplicationUser> signInManager, ILogger<OrderHistoryController>logger)
        {
            _orderHistoryService = orderHistoryService;
            _signInManager = signInManager;
            _logger = logger;
        }

        [HttpGet]
        public IActionResult Index( string filter)
        {
            _logger.LogInformation($"action=index filter={filter}");
            try
            {
                var userId = _signInManager.UserManager.GetUserId(User);
                var orderHistory = _orderHistoryService.DisplayOrderHistory(userId);
                    if (filter == "cancelled")
                    {
                        var cancelledOrder = orderHistory.Where(x => x.OrderConfirmation == false).ToList();
                        return View(cancelledOrder);
                    }
                    else if (filter == "inProgress")
                    {
                        var inProgressOrders = orderHistory.Where(x => x.OrderConfirmation == true).ToList();
                        return View(inProgressOrders);
                    }
                    return View(orderHistory);
            }
            catch(Exception ex)
            {
                _logger.LogError($"action=index, msg='{ex.Message}", ex);
                return View("Error", new ErrorViewModel());
            }
        }
    }
}
