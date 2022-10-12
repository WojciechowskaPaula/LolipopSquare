using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models
{
    public class Category
    {
        [Required]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }
        public ICollection<Product> Products { get; set; }
    }
}
