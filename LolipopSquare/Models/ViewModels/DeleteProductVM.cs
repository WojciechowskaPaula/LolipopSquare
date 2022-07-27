namespace LolipopSquare.Models.ViewModels
{
    public class DeleteProductVM
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public ICollection<Image> Images { get; set; }
    }
}
