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
        public IFormFile ImageData { get; set; }
        public ICollection<Image> Images { get; set; }
    }
}
