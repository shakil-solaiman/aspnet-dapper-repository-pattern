using WebApplication3.DTOs;
using WebApplication3.Models;
using WebApplication3.Repositories;

namespace WebApplication3.Services;

public class ShopService : IShopService
{
    private readonly IShopRepository _shopRepository;

    public ShopService(IShopRepository shopRepository)
    {
        _shopRepository = shopRepository;
    }


    public async Task<IEnumerable<Product>> GetAllProductsAsync()
    {
        return await _shopRepository.GetAllProductsAsync();
    }


    public async Task<IEnumerable<Product>> GetProductsByMinimumPriceAsync(decimal minimumPrice, decimal? maximumPrice)
    {
        return await _shopRepository.GetProductsByMinimumPriceAsync(minimumPrice, maximumPrice);
    }


    public async Task<IEnumerable<SalesDetailsDto>> GetSalesDetailsAsync()
    {
        return await _shopRepository.GetSalesDetailsAsync();
    }
}