using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models.ViewModels
{
    public class EditCategoryVM
    {
        [Required]
        public int Id { get; set; }

        [Required]
        [Range(1, 30)]
        public string Name { get; set; }
    }
}
