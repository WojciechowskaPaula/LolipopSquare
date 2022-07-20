using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;

namespace LolipopSquare.Interface
{
    public interface IProductService
    {
        IEnumerable<Product> GetAllProducts();
        ProductDetailVM GetProductById(int id);
        void UpdateProduct(ProductDetailVM productDetailVM);
        Product AddNewProduct(AddNewProductVM productVM);
        void DeleteProduct(int id);
        public DeleteProductVM GetProductByIdForDelete(int id);
    }
}
