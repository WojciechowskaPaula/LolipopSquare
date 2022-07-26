using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;

namespace LolipopSquare.Interface
{
    public interface IProductService
    {
        IEnumerable<Product> GetAllProducts();
        ProductDetailsVM GetProductById(int id);
        void UpdateProduct(ProductDetailsVM productDetailVM);
        Product AddNewProduct(AddNewProductVM productVM);
        void DeleteProduct(int id);
        DeleteProductVM GetProductByIdForDelete(int id);
        ProductDetailsVM GetProductDetails(int id);
    }
}
