using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models.ViewModels
{
    public class ProductImageVM
    {
        public int Id { get; set; }

        [StringLength(30, MinimumLength = 1, ErrorMessage = "Product name must range from 1-30 characters ")]

        [Required(AllowEmptyStrings =false)]
        public string Name { get; set; }

       [Range(1,10000, ErrorMessage = "Price must be between 1€ and 100€")]
        public decimal Price { get; set; }

        [StringLength(1000, MinimumLength = 1, ErrorMessage ="Description must range from 10-300 characters ")]
        public string Description { get; set; }
        public bool Availability { get; set; }
        public int CategoryId { get; set; }

        [Display(Name ="Category")]
        public List<Category>? CategoryList { get; set; }
        public ICollection<Image>? Images { get; set; }

        [Display(Name ="Upload images")]
        public List<IFormFile>? NewImages { get; set; }
    }
}
