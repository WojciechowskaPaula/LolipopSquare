using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models.ViewModels;

namespace LolipopSquare.Services
{
    public class OrderHistoryService : IOrderHistoryService
    {
        private readonly ApplicationDbContext _applicationDb;
        public OrderHistoryService(ApplicationDbContext applicationDb)
        {
            _applicationDb = applicationDb;
        }

        public List<OrderHistoryVM> DisplayOrderHistory(string userId)
        {
            var listOfOrders = _applicationDb.Orders.Where(x => x.ApplicationUser.Id == userId).ToList();
            List<OrderHistoryVM> userListOfOrders = new List<OrderHistoryVM>();
           
            if (listOfOrders.Count > 0)
            {
                foreach (var item in listOfOrders)
                {
                    OrderHistoryVM orderHistory = new OrderHistoryVM();
                    orderHistory.OrderId = item.OrderId;
                    orderHistory.DateOfOrder = item.DateOfOrder;
                    orderHistory.TotalPrice = item.TotalPrice;
                    orderHistory.OrderConfirmation = item.OrderConfirmation;

                   userListOfOrders.Add(orderHistory);
                    var user = _applicationDb.ApplicationUser.FirstOrDefault(x => x.Id == userId);
                    if (user != null)
                    {
                        orderHistory.ApplicationUser.Id = user.Id;
                        orderHistory.ApplicationUser.FirstName = user.FirstName;
                        orderHistory.ApplicationUser.LastName = user.LastName;
                        orderHistory.ApplicationUser.Street = user.Street;
                        orderHistory.ApplicationUser.BuildingNo = user.BuildingNo;
                        orderHistory.ApplicationUser.City = user.City;
                        orderHistory.ApplicationUser.ZipCode = user.ZipCode;
                        orderHistory.ApplicationUser.PhoneNumber = user.PhoneNumber;
                        orderHistory.ApplicationUser.Email = user.Email;
                    }
                }
            }
            return userListOfOrders;
        }
    }
}