using LolipopSquare.Models.DTO;

namespace LolipopSquare.Models.ViewModels
{
    public class OrderSummaryVM
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public int OrderId { get; set; }
        public DateTime DateOfOrder { get; set; }
        public decimal TotalPrice { get; set; }
        public List<ShoppingCartItem> ShoppingCartItems {get; set;}
        public ApplicationUser ApplicationUser { get; set; }
    }

    
}
