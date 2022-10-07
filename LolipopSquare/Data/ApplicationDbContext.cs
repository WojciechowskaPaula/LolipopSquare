using LolipopSquare.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace LolipopSquare.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions options) : base(options){}
        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Image> Images { get; set; }
        public DbSet<ApplicationUser> ApplicationUser { get; set; }
        public DbSet<LolipopSquare.Models.ViewModels.ProjectRolesVM>? ProjectRolesVM { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<ProductOrder> ProductOrder { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<ProductOrder>()
            .HasKey(po => new { po.ProductId, po.OrderID });
            modelBuilder.Entity<ProductOrder>()
                .HasOne(po => po.Order)
                .WithMany(b => b.ProductOrders)
                .HasForeignKey(o => o.OrderID);
            modelBuilder.Entity<ProductOrder>()
                .HasOne(p => p.Product)
                .WithMany(o => o.ProductOrders)
                .HasForeignKey(x => x.ProductId);
        }
    }
}