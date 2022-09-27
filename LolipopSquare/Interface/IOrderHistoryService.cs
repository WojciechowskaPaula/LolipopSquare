using LolipopSquare.Models.ViewModels;

namespace LolipopSquare.Interface
{
    public interface IOrderHistoryService
    {
        List<OrderHistoryVM> DisplayOrderHistory(string userId);
    }
}
