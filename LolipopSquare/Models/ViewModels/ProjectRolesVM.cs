using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models.ViewModels
{
    public class ProjectRolesVM
    {
        public int Id { get; set; }

        [StringLength(60, MinimumLength = 3)]
        public string RoleName { get; set; }
    }
}
