using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace LolipopSquare.Models
{
    public class ApplicationUser : IdentityUser
    {
        [Display(Name ="First Name")]
        public string FirstName { get; set; }

        [Display(Name ="Last Name")]
        public string LastName { get; set; }

        [Display(Name ="Building number")]
        public string BuildingNo { get; set; }
        public string Street { get; set; }
        public string City { get; set; }

        [Display(Name ="Zip code")]
        public string ZipCode { get; set; }

        [Display(Name ="Phone number")]
        public override string PhoneNumber { get; set; }
        public ICollection<Order> Orders { get; set; }
    }
}
