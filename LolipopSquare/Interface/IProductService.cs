using LolipopSquare.Models;

namespace LolipopSquare.Interface
{
    public interface IProductService
    {
        IEnumerable<Product> GetAllProducts();
        ProductDetailVM GetProductById(int id);
        void UpdateProduct(ProductDetailVM productDetailVM);
    }
}
