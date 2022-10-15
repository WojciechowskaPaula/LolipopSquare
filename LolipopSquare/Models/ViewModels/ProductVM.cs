using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models.ViewModels
{
    public class ProductVM
    {
        public int Id { get; set; }

        [StringLength(60, MinimumLength = 3, ErrorMessage = "Minimum 3 characters requied")]
        public string Name { get; set; }

        [Range(1,10000)]
        [DataType(DataType.Currency)]
        public decimal Price { get; set; }

        [StringLength(1000, MinimumLength = 20, ErrorMessage = "Minimum 20 characters and maximum 1000 characters requied")]
        public string Description { get; set; }
        public bool Availability { get; set; }

        [Display(Name ="Category name")]
        public string CategoryName { get; set; }
        
        public ICollection<Image> Images { get; set; }
        public Image Image { get; set; }

        [Range(1, 10000)]
        [DataType(DataType.Currency)]
        public decimal PriceInEU { get; set; }
        
    }
}
