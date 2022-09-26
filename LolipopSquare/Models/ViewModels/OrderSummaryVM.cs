using LolipopSquare.Models.DTO;
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace LolipopSquare.Models.ViewModels
{
    public class OrderSummaryVM
    {
        
        public int OrderId { get; set; }
        public DateTime DateOfOrder { get; set; }
        public decimal TotalPrice { get; set; }
        public List<ShoppingCartItem> ShoppingCartItems {get; set;}
        public ApplicationUser ApplicationUser { get; set; }
    }

    
}
