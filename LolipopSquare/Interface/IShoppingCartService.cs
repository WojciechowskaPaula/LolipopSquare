using LolipopSquare.Models.DTO;
using LolipopSquare.Services;

namespace LolipopSquare.Interface
{
    public interface IShoppingCartService
    {
        ShoppingCartItem GetProduct(int id);
    }
}
