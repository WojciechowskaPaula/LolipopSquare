using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models;

namespace LolipopSquare.Services
{
    public class ProductService : IProductService
    {
        private readonly ApplicationDbContext _dbContext;

        public ProductService(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public IEnumerable<Product> GetAllProducts()
        {
            var products = _dbContext.Products.ToList();
            return products;
        }
    }
}
