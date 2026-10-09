namespace WebApplication3.DTOs;

public class SalesDetailsDto
{
    public string CustomerName { get; set; } = string.Empty;

    public string ProductName { get; set; } = string.Empty;

    public int Quantity { get; set; }

    public DateTime SaleDate { get; set; }
}