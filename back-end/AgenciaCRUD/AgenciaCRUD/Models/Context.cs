using Microsoft.EntityFrameworkCore;

namespace AgenciaCRUD.Models
{
    public class Context : DbContext
    {
        public Context(DbContextOptions<Context> options) : base(options)
        {

        }

        public DbSet<Destino> Destinos { get; set; }
        public DbSet<Promocao> Promocao { get;}
    }
}
