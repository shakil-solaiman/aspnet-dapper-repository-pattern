using WebApplication3.DTOs;
using WebApplication3.Models;

namespace WebApplication3.Services;

public interface IShopService
{
    Task<IEnumerable<Product>> GetAllProductsAsync();

    Task<IEnumerable<Product>> GetProductsByMinimumPriceAsync(decimal minimumPrice, decimal? maximumPrice);

    Task<IEnumerable<SalesDetailsDto>> GetSalesDetailsAsync();
}