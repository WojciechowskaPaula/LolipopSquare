using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models
{
    public class ProductDetailsVM
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public bool Availability { get; set; }
        public ICollection<Image> Images { get; set; }
    }
}
