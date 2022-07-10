using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models
{
    public class Category
    {
        [Required]
        public int Id { get; set; }

        [Required]
        [Range(1,30)]
        public string Name { get; set; }
        public Product Product { get; set; }
    }
}
