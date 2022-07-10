using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models
{
    public class Product
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Range(1,100000)]
        public decimal Price { get; set; }

        [Display(Name ="Product description")]
        [MinLength(10, ErrorMessage ="Description must contains minimum 10 characters")]
        public string Description { get; set; }
        public bool Availability { get; set; }
        public string Image { get; set; }

        public Category Category { get; set; }

    }
}
