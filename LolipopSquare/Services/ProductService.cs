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

        public ProductDetailVM GetProductById(int id)
        {
            var editData = _dbContext.Products.FirstOrDefault(x => x.Id == id);
            ProductDetailVM detailVM = new ProductDetailVM();
            detailVM.Id = editData.Id;
            detailVM.Name = editData.Name;
            detailVM.Price = editData.Price;
            detailVM.Description = editData.Description;
            return detailVM;
        }
    }
}
