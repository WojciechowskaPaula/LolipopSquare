using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models.ViewModels
{
    public class AddNewProductVM
    {
        public int Id { get; set; }

        [StringLength(30, MinimumLength = 1, ErrorMessage = "Product name must range from 1-30 characters ")]
        public string Name { get; set; }

        [Range(1,10000, ErrorMessage = "Price must be between 1€ and 100€")]
        public decimal Price { get; set; }

        [StringLength(300, MinimumLength = 10, ErrorMessage = "Description must range from 10-300 characters ")]
        public string Description { get; set; }
        public bool Availability { get; set; }
        public Category Category { get; set; }
        public List<Category> CategoryList { get; set; }

        [Display(Name = "Upload images")]
        public ICollection<IFormFile> Images { get; set; }
    }
}
