namespace LolipopSquare.Models.ViewModels
{
    public class ProductVM
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public bool Availability { get; set; }
        public string CategoryName { get; set; }
        
        public ICollection<Image> Images { get; set; }
        public Image Image { get; set; } 
        
    }
}
