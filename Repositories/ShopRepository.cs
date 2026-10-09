using System.Data;
using Dapper;
using Microsoft.Data.SqlClient;
using WebApplication3.DTOs;
using WebApplication3.Models;

namespace WebApplication3.Repositories;

public class ShopRepository : IShopRepository
{
    private readonly IConfiguration _configuration;

    public ShopRepository(IConfiguration configuration)
    {
        _configuration = configuration;
    }



    private SqlConnection CreateConnection()
    {
        var connectionString = _configuration.GetConnectionString("DefaultConnection");

        return new SqlConnection(connectionString);
    }



    public async Task<IEnumerable<Product>> GetAllProductsAsync()
    {
        const string sql = @" select ProductId, ProductName, Price, StockQuantity
                              from Products
                              order by ProductName;";

        using var connection = CreateConnection();

        return await connection.QueryAsync<Product>(sql);
    }




    public async Task<IEnumerable<Product>> GetProductsByMinimumPriceAsync(decimal minimumPrice, decimal? maximumPrice)
    {
        const string sql = @" select ProductId, ProductName, Price, StockQuantity
                              from Products
                              where Price > @MinimumPrice
                              and 
                              (@MaximumPrice is null or Price < @MaximumPrice)
                              order BY Price;";

        using var connection = CreateConnection();

        return await connection.QueryAsync<Product>(sql,new { MinimumPrice = minimumPrice, MaximumPrice = maximumPrice });
    }



    public async Task<IEnumerable<SalesDetailsDto>> GetSalesDetailsAsync()
    {
        using var connection = CreateConnection();

        return await connection.QueryAsync<SalesDetailsDto>(
            "GetSalesDetails",
            commandType: CommandType.StoredProcedure);
    }
}