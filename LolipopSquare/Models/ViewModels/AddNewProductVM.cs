namespace LolipopSquare.Models.ViewModels
{
    public class AddNewProductVM
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public bool Availability { get; set; }
        public Category Category { get; set; }
        public List<Category> CategoryList { get; set; }
        public ICollection<IFormFile> Images { get; set; }
    }
}
