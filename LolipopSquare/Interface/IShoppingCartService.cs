using LolipopSquare.Models;
using LolipopSquare.Models.DTO;
using LolipopSquare.Models.ViewModels;
using LolipopSquare.Services;

namespace LolipopSquare.Interface
{
    public interface IShoppingCartService
    {
        ShoppingCartItem GetProduct(int id);
        OrderSummaryVM AddOrder(List<ShoppingCartItem> shoppingCartItems, string userId);
        Order AddDeliveryData(string userId, OrderSummaryVM orderSummaryVM);
    }
}
