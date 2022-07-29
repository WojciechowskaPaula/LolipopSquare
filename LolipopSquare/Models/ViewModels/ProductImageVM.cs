using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models.ViewModels
{
    public class ProductImageVM
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public bool Availability { get; set; }
        public Category Category { get; set; }
        public List<Category> CategoryList { get; set; }
        public string CategoryName { get; set; }
        public ICollection<Image> Images { get; set; }

        [Display(Name ="Upload images")]
        public List<IFormFile> NewImages { get; set; }
    }
}
