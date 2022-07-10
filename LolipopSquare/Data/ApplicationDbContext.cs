using LolipopSquare.Models;
using Microsoft.EntityFrameworkCore;

namespace LolipopSquare.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions options) : base(options){}
        DbSet<Product> Products { get; set; }
        DbSet<Category> Categories { get; set; }
    }
}
