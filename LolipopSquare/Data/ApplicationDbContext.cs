using LolipopSquare.Models;
using Microsoft.EntityFrameworkCore;
using LolipopSquare.Models.ViewModels;

namespace LolipopSquare.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions options) : base(options){}
        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Image> Images { get; set; }
        public DbSet<LolipopSquare.Models.ViewModels.DeleteProductVM>? DeleteProductVM { get; set; }
    }
}
