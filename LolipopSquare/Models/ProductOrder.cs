using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models
{
    public class ProductOrder
    {
        public int ProductId { get; set; }
        public Product Product { get; set; }
        [Key]
        public int OrderId { get; set; }
        public Order Order { get; set; }
    }
}
