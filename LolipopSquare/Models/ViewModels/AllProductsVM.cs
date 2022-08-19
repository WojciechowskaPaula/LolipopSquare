namespace LolipopSquare.Models.ViewModels
{
    public class AllProductsVM
    {
        public List<ProductVM> Products { get; set; }
        public int CurrentPage { get; set; }
        public int PageSize { get; set; }
        public string Search { get; set; }
        public int Count { get; set; }
    }
}
