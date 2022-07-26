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

        public ProductDetailsVM GetProductById(int id)
        {
            var editData = _dbContext.Products.FirstOrDefault(x => x.Id == id);
            ProductDetailsVM detailVM = new ProductDetailsVM();
            detailVM.Id = editData.Id;
            detailVM.Name = editData.Name;
            detailVM.Price = editData.Price;
            detailVM.Description = editData.Description;
            detailVM.Availability = editData.Availability;
            
            return detailVM;
        }

        public void UpdateProduct(ProductDetailsVM productDetailVM)
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

            var listOfImages = new List<Image>();
            foreach (var image in productVM.Images)
            {
                Image imageToAdd = new Image();
                imageToAdd.ImageTitle = image.FileName;
                MemoryStream ms = new MemoryStream();
                image.CopyTo(ms);
                imageToAdd.ImageData = ms.ToArray();
                ms.Close();
                ms.Dispose();
                listOfImages.Add(imageToAdd);
            }
           newProduct.Images = listOfImages;

            _dbContext.Add(newProduct);
            _dbContext.SaveChanges();
            return newProduct;
        }

        public DeleteProductVM GetProductByIdForDelete(int id)
        {
            var productToRemove = _dbContext.Products.Where(x => x.Id == id).FirstOrDefault();
            DeleteProductVM productVM = new DeleteProductVM();
            productVM.Id = productToRemove.Id;
            productVM.Name = productToRemove.Name;
            productVM.Description = productToRemove.Description;
            productVM.Price = productToRemove.Price;
            return productVM;
            
        }

        public void DeleteProduct(int id)
        {
            var productToDelete = _dbContext.Products.Where(x => x.Id == id).FirstOrDefault();
            _dbContext.Remove(productToDelete);
            _dbContext.SaveChanges();
        }

        public ProductDetailsVM GetProductDetails(int id)
        {
            var productToDisplay = _dbContext.Products.Where(x => x.Id == id).FirstOrDefault();
            ProductDetailsVM productDetails = new ProductDetailsVM();
            productDetails.Id = productToDisplay.Id;
            productDetails.Name = productToDisplay.Name;
            productDetails.Description = productToDisplay.Description;
            productDetails.Price = productToDisplay.Price;
            productDetails.Availability = productToDisplay.Availability;
            return productDetails;

        }
    }
}
