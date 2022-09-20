using LolipopSquare.Data;
using LolipopSquare.Interface;
using LolipopSquare.Models;
using LolipopSquare.Models.CurrencyAPIResults;
using LolipopSquare.Models.ViewModels;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Web.Mvc;

namespace LolipopSquare.Services
{
    public class ProductService : IProductService
    {
        private readonly ApplicationDbContext _dbContext;

        public ProductService(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public AllProductsVM GetAllProducts(int pageSize, int actualPage, string search, string category)
        {
            List<Product> products;
            if (!string.IsNullOrEmpty(category))
            {
                products = _dbContext.Products.Include(product => product.Images).Include(y => y.Category).ToList().Where(x => x.Name.ToLower().StartsWith(search.ToLower())).Where(x => x.Category.Name == category).ToList();
            }
            else
            {
                 products = _dbContext.Products.Include(product => product.Images).Include(y => y.Category).ToList().Where(x => x.Name.ToLower().StartsWith(search.ToLower())).ToList();

            }
            List<ProductVM> listOfProducts = new List<ProductVM>();
            var productsToDisplay = products.Skip(pageSize * (actualPage - 1)).Take(pageSize);
            foreach (var item in productsToDisplay)
            {
                ProductVM productVM = new ProductVM();
                productVM.Id = item.Id;
                productVM.Name = item.Name;
                productVM.Price = item.Price;
                productVM.Description = item.Description;
                productVM.Availability = item.Availability;
                productVM.Images = item.Images;
                productVM.CategoryName = item.Category.Name;
                listOfProducts.Add(productVM);
            }
            
            AllProductsVM allProductsVM = new AllProductsVM();
            allProductsVM.CurrentPage = actualPage;
            allProductsVM.PageSize = pageSize;
            allProductsVM.Search = search;
            allProductsVM.Products = listOfProducts;
            allProductsVM.Count = products.Count();
            return allProductsVM;
            
        }

        public ProductImageVM GetProductById(int id)
        {
            var editData = _dbContext.Products.Include(x=>x.Images).FirstOrDefault(x => x.Id == id);
            var categories = _dbContext.Categories.ToList();
            ProductImageVM detailVM = new ProductImageVM();
            detailVM.Id = editData.Id;
            detailVM.Name = editData.Name;
            detailVM.Price = editData.Price;
            detailVM.Description = editData.Description;
            detailVM.Availability = editData.Availability;
            detailVM.Images = editData.Images;
            detailVM.CategoryList = categories;
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
            productToUpdate.CategoryId = productImageVM.Category.Id;

            if(productImageVM.NewImages != null)
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

        public AddNewProductVM GetNewProductVM()
        {
            AddNewProductVM productVM = new AddNewProductVM();
            productVM.CategoryList = _dbContext.Categories.ToList();
            return productVM;
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

        public async Task<ProductDetailsVM> GetProductDetails(int id)
        {
            var productToDisplay = _dbContext.Products.Where(x => x.Id == id).FirstOrDefault();
            var currencyRatesAPI = await GetCurrencyRates();
            var images = _dbContext.Images.Where(x => x.ProductId == id).ToList();
            ProductDetailsVM productDetails = new ProductDetailsVM();
            productDetails.Id = productToDisplay.Id;
            productDetails.Name = productToDisplay.Name;
            productDetails.Description = productToDisplay.Description;
            productDetails.Price = productToDisplay.Price;
            productDetails.PriceInUsd = productToDisplay.Price * (decimal)currencyRatesAPI.Rates.USD;
            productDetails.PriceInPLN = productToDisplay.Price * (decimal)currencyRatesAPI.Rates.PLN;
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

        private async Task <CurrencyAPI> GetCurrencyRates()
        {
            using var client = new HttpClient();
            var url = "https://api.exchangerate.host/latest";
            HttpResponseMessage response = await client.GetAsync(url);
            response.EnsureSuccessStatusCode();
            var jsonResp = await response.Content.ReadAsStringAsync();
            CurrencyAPI rates = JsonConvert.DeserializeObject<CurrencyAPI>(jsonResp);
            return rates;
        }
    }
}
