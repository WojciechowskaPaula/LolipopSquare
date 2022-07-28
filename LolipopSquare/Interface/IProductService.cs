using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;

namespace LolipopSquare.Interface
{
    public interface IProductService
    {
        List<ProductVM> GetAllProducts();
        ProductImageVM GetProductById(int id);
        void UpdateProduct(ProductImageVM productImageVM);
        Product AddNewProduct(AddNewProductVM productVM);
        void DeleteProduct(int id);
        DeleteProductVM GetProductByIdForDelete(int id);
        ProductDetailsVM GetProductDetails(int id);
        void DeleteSingleImg(int id);
    }
}
