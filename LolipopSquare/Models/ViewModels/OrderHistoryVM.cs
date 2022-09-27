namespace LolipopSquare.Models.ViewModels
{
    public class OrderHistoryVM
    {
        public int OrderId { get; set; }
        public DateTime DateOfOrder { get; set; }
        public decimal TotalPrice { get; set; }
        public bool OrderConfirmation { get; set; }
        public ApplicationUser ApplicationUser { get; set; }
    }
}
