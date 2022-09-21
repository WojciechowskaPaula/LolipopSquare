namespace LolipopSquare.Models
{
    public class Order
    {
        public int OrderId { get; set; }
        public DateTime DateOfOrder { get; set; }
        public decimal TotalPrice { get; set; }
        public int Quantity { get; set; }
        public ICollection<ProductOrder> ProductOrder { get; set; }
        public ApplicationUser ApplicationUser { get; set; }
    }
}
