using Microsoft.AspNetCore.Mvc;
using WebApplication3.Services;

namespace WebApplication3.Controllers;

public class ShopController : Controller
{
    private readonly IShopService _shopService;

    public ShopController(IShopService shopService)
    {
        _shopService = shopService;
    }


    public async Task<IActionResult> Index()
    {
        var products = await _shopService.GetAllProductsAsync();

        return View(products);
    }



    [HttpGet("ProductsByPrice")]
    public async Task<IActionResult> ProductsByPrice(decimal minimumPrice, decimal? maximumPrice)
    {
        var products = await _shopService.GetProductsByMinimumPriceAsync(minimumPrice, maximumPrice);

        return View(products);
    }



    [HttpGet("SalesDetails")]
    public async Task<IActionResult> SalesDetails()
    {
        var sales = await _shopService.GetSalesDetailsAsync();

        return View(sales);
    }
}