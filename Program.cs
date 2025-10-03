using System;
using System.Threading.Tasks;
using Npgsql;

class Program
{
    static async Task Main(string[] args)
    {
        // adjust this connection string to your DB settings
	//ALTER USER postgres PASSWORD 'postgres';
        var connString = "Host=localhost;Username=postgres;Password=postgres;Database=postgres";

        await using var conn = new NpgsqlConnection(connString);
        await conn.OpenAsync();

        Console.WriteLine("Connected to PostgreSQL!");

        // Example: call a pl/dotnet function
        await using (var cmd = new NpgsqlCommand("SELECT hello()", conn))
        await using (var reader = await cmd.ExecuteReaderAsync())
        {
            while (await reader.ReadAsync())
            {
                Console.WriteLine(reader.GetString(0));
            }
        }
    }
}
