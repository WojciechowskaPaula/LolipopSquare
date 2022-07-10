using Microsoft.EntityFrameworkCore;

namespace LolipopSquare.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions options) : base(options){}
    }
}
