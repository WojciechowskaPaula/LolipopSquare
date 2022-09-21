using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models.DTO;

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

    }
}
