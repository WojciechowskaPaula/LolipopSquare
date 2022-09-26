namespace LolipopSquare.Models
{
    public class Order
    {
        public int OrderId { get; set; }
        public DateTime DateOfOrder { get; set; }
        public decimal TotalPrice { get; set; }
        public bool OrderConfirmation { get; set; } = false;
        public ICollection<ProductOrder> ProductOrders { get; set; }
        public ApplicationUser ApplicationUser { get; set; }
    }
}
