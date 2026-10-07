using Microsoft.EntityFrameworkCore;

namespace CmpShopApi.Models
{
    public class CmpShopDbContext : DbContext
    {
        public CmpShopDbContext(DbContextOptions options) : base(options)
        {
        }

        public CmpShopDbContext()
        {
        }

        public DbSet<Osystem> Osystems { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseMySQL("server=localhost;database=computer;user=root;password=");
        }
    }
}
