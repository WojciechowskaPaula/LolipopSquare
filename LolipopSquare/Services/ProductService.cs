using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;

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
            detailVM.Availability = editData.Availability;
            return detailVM;
        }

        public void UpdateProduct(ProductDetailVM productDetailVM)
        {
            var productToUpdate = _dbContext.Products.FirstOrDefault(x => x.Id == productDetailVM.Id);
            productToUpdate.Id = productDetailVM.Id;
            productToUpdate.Name = productDetailVM.Name;
            productToUpdate.Price = productDetailVM.Price;
            productToUpdate.Description = productDetailVM.Description;
            productToUpdate.Availability = productDetailVM.Availability;
            _dbContext.SaveChanges();
        }

        public Product AddNewProduct(AddNewProductVM productVM)
        {
            Product newProduct = new Product();
            newProduct.Name = productVM.Name;
            newProduct.Price = productVM.Price;
            newProduct.Description = productVM.Description;
            newProduct.Availability = productVM.Availability;
            newProduct.CategoryId = productVM.Category.Id;
            _dbContext.Add(newProduct);
            _dbContext.SaveChanges();
            return newProduct;
        }
    }
}
