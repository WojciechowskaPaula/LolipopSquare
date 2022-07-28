using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;
using Microsoft.EntityFrameworkCore;

namespace LolipopSquare.Services
{
    public class ProductService : IProductService
    {
        private readonly ApplicationDbContext _dbContext;

        public ProductService(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public List<ProductVM> GetAllProducts()
        {
            var products = _dbContext.Products.Include(product => product.Images).ToList();
            List<ProductVM> listOfProducts = new List<ProductVM>();
            foreach (var item in products)
            {
                ProductVM productVM = new ProductVM();
                productVM.Id = item.Id;
                productVM.Name = item.Name;
                productVM.Price = item.Price;
                productVM.Description = item.Description;
                productVM.Availability = item.Availability;
                productVM.Images = item.Images;
                listOfProducts.Add(productVM);
            }
            return listOfProducts;
        }

        public ProductImageVM GetProductById(int id)
        {
            var editData = _dbContext.Products.FirstOrDefault(x => x.Id == id);
            var listOfImages = _dbContext.Images.Where(x => x.ProductId == id).ToList();
            ProductImageVM detailVM = new ProductImageVM();
            detailVM.Id = editData.Id;
            detailVM.Name = editData.Name;
            detailVM.Price = editData.Price;
            detailVM.Description = editData.Description;
            detailVM.Availability = editData.Availability;
            detailVM.Images = listOfImages;
            return detailVM;
        }

        public void UpdateProduct(ProductImageVM productImageVM)
        {
            var productToUpdate = _dbContext.Products.Include(x => x.Images).FirstOrDefault(x => x.Id == productImageVM.Id);
            productToUpdate.Id = productImageVM.Id;
            productToUpdate.Name = productImageVM.Name;
            productToUpdate.Price = productImageVM.Price;
            productToUpdate.Description = productImageVM.Description;
            productToUpdate.Availability = productImageVM.Availability;

            if(productImageVM.Images != null)
            {
                foreach (var item in productImageVM.NewImages)
                {
                    Image imageToAdd = new Image();
                    imageToAdd.ImageTitle = item.FileName;
                    MemoryStream ms = new MemoryStream();
                    item.CopyTo(ms);
                    imageToAdd.ImageData = ms.ToArray();
                    ms.Close();
                    ms.Dispose();
                    productToUpdate.Images.Add(imageToAdd);
                }
            }
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
            var listOfImages = _dbContext.Images.Where(x => x.ProductId == id).ToList();
            DeleteProductVM productVM = new DeleteProductVM();
            productVM.Id = productToRemove.Id;
            productVM.Name = productToRemove.Name;
            productVM.Description = productToRemove.Description;
            productVM.Price = productToRemove.Price;
            productVM.Images = productToRemove.Images;
            return productVM;

        }

        public void DeleteProduct(int id)
        {
            var productToDelete = _dbContext.Products.Where(x => x.Id == id).FirstOrDefault();
            var imagesToRemove = _dbContext.Images.Where(x => x.ProductId == id).ToList();
            foreach (var item in imagesToRemove)
            {
                _dbContext.Remove(item);
            }
            _dbContext.Remove(productToDelete);
            _dbContext.SaveChanges();
        }

        public ProductDetailsVM GetProductDetails(int id)
        {
            var productToDisplay = _dbContext.Products.Where(x => x.Id == id).FirstOrDefault();
            var images = _dbContext.Images.Where(x => x.ProductId == id).ToList();
            ProductDetailsVM productDetails = new ProductDetailsVM();
            productDetails.Id = productToDisplay.Id;
            productDetails.Name = productToDisplay.Name;
            productDetails.Description = productToDisplay.Description;
            productDetails.Price = productToDisplay.Price;
            productDetails.Availability = productToDisplay.Availability;
            productDetails.Images = images;
            return productDetails;
        }

        public void DeleteSingleImg(int id)
        {
            var imageToRemove = _dbContext.Images.Where(x => x.Id == id).FirstOrDefault();
            _dbContext.Images.Remove(imageToRemove);
            _dbContext.SaveChanges();
        }
    }
}
