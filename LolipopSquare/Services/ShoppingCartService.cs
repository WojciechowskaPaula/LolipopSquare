using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.DTO;
using LolipopSquare.Models.ViewModels;

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
            shoppingCartItem.ProductId = product.Id;
            shoppingCartItem.ProductName = product.Name;
            shoppingCartItem.Price = product.Price;
            
            return shoppingCartItem;
        }

        public OrderSummaryVM AddOrder(List<ShoppingCartItem> shoppingCartItems, string userId)
        {
            ProductOrder productOrder = new ProductOrder();
            Order order = new Order();
            order.DateOfOrder = DateTime.Now;
            var user = _dbContext.ApplicationUser.Where(x => x.Id == userId).FirstOrDefault();
            order.ApplicationUser = user;

            var orderobj = _dbContext.Add(order);
            _dbContext.SaveChanges();
            var orderId = orderobj.CurrentValues["OrderId"];
            productOrder.OrderID = (int)orderId;
            foreach (var item in shoppingCartItems)
            {
                productOrder.ProductId = item.ProductId;
                var product = _dbContext.Products.Where(x => x.Id == item.ProductId).FirstOrDefault();
                productOrder.Product = product;

                productOrder.Product.Name = item.ProductName;
                productOrder.Product.Price = item.Price;
                order.TotalPrice += item.Price * item.Quantity;
                _dbContext.Add(productOrder);
                _dbContext.SaveChanges();
            }

            
            
            

            OrderSummaryVM vm = new OrderSummaryVM();
            vm.OrderId = (int)orderId;
            vm.DateOfOrder = order.DateOfOrder;
            vm.TotalPrice = order.TotalPrice;
            vm.ShoppingCartItems = shoppingCartItems;
            

            return vm;

        }
    }
}
