using Mechanic.Data;
using Microsoft.Data.Sqlite;
using Microsoft.EntityFrameworkCore;

public class RepositoryTestBase
{
    protected AppDbContext CreateContext()
    {
        var connection = new SqliteConnection("Filename=:memory:");
        connection.Open();

        var options = new DbContextOptionsBuilder<AppDbContext>()
            .UseSqlite(connection)
            .Options;

        var context = new AppDbContext(options);
        context.Database.EnsureCreated();

        return context;
    }
}