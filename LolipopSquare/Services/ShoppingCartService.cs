using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.DTO;
using LolipopSquare.Models.ViewModels;
using Microsoft.EntityFrameworkCore;

namespace LolipopSquare.Services
{
    public class ShoppingCartService : IShoppingCartService
    {
        private readonly ApplicationDbContext _dbContext;

        public ShoppingCartService(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }
        public ShoppingCartItem GetProduct(int id)
        {
            var product = _dbContext.Products.Where(x => x.Id == id).FirstOrDefault();
            ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
            if(product != null)
            {
                shoppingCartItem.ProductId = product.Id;
                shoppingCartItem.ProductName = product.Name;
                shoppingCartItem.Price = product.Price;
            }
            return shoppingCartItem;
        }

        public OrderSummaryVM AddOrder(List<ShoppingCartItem> shoppingCartItems, string userId)
        {
            ProductOrder productOrder = new ProductOrder();
            Order order = new Order
            {
                DateOfOrder = DateTime.Now
            };
            var user = _dbContext.ApplicationUser.Where(x => x.Id == userId).FirstOrDefault();
            if(user != null)
            {
                order.ApplicationUser = user;
            }
            
            var orderobj = _dbContext.Add(order);
            _dbContext.SaveChanges();
            var orderId = orderobj.CurrentValues["OrderId"];
            if(orderId != null)
            {
                productOrder.OrderID = (int)orderId;
            }
            else
            {
                throw new Exception("orderId cannot be null");
            }

            foreach (var item in shoppingCartItems)
            {
                productOrder.ProductId = item.ProductId;
                var product = _dbContext.Products.Where(x => x.Id == item.ProductId).FirstOrDefault();
                if(product != null)
                {
                    productOrder.Product = product;
                    productOrder.Product.Name = item.ProductName;
                    productOrder.Product.Price = item.Price;
                    order.TotalPrice += item.Price * item.Quantity;
                    _dbContext.Add(productOrder);
                    _dbContext.SaveChanges();
                }
            }

            OrderSummaryVM vm = new();
            vm.OrderId = (int)orderId;
            vm.DateOfOrder = order.DateOfOrder;
            vm.TotalPrice = order.TotalPrice;
            vm.ShoppingCartItems = shoppingCartItems;
            vm.ApplicationUser = order.ApplicationUser;
            return vm;
        }

        public Order AddDeliveryData(string userId, OrderSummaryVM orderSummaryVM)
        {
            var user = _dbContext.ApplicationUser.Where(x => x.Id == userId).FirstOrDefault();
            var order = _dbContext.Orders.Where(x => x.OrderId == orderSummaryVM.OrderId).Include(y => y.ApplicationUser).Where(z => z.ApplicationUser.Id == userId).FirstOrDefault();
            order.OrderConfirmation = true;
            user.FirstName = orderSummaryVM.ApplicationUser.FirstName;
            user.LastName = orderSummaryVM.ApplicationUser.LastName;
            user.LastName = orderSummaryVM.ApplicationUser.LastName;
            user.BuildingNo = orderSummaryVM.ApplicationUser.BuildingNo;
            user.Street = orderSummaryVM.ApplicationUser.Street;
            user.City = orderSummaryVM.ApplicationUser.City;
            user.ZipCode = orderSummaryVM.ApplicationUser.ZipCode;
            user.PhoneNumber = orderSummaryVM.ApplicationUser.PhoneNumber;
            user.Email = orderSummaryVM.ApplicationUser.Email;
            _dbContext.SaveChanges();
            return order;
        }
    }
}
