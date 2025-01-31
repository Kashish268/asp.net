using Microsoft.EntityFrameworkCore;
using workshop_mvc.Models;

namespace workshop_mvc.Data
{
    public class studentregisterdbcontext : DbContext
    {
        public studentregisterdbcontext(DbContextOptions options) : base(options)
        {

        }

        public DbSet<studentregister> stu_register { get; set; }
    }
}
