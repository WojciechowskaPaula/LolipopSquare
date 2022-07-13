using LolipopSquare.Models;

namespace LolipopSquare.Interface
{
    public interface IProductService
    {
        IEnumerable<Product> GetAllProducts();
    }
}
