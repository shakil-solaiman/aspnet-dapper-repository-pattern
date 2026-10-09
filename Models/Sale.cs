namespace WebApplication3.Models;

public class Sale
{
    public int SaleId { get; set; }

    public int CustomerId { get; set; }
    public int ProductId { get; set; }

    public int Quantity { get; set; }

    public DateTime SaleDate { get; set; } = DateTime.Now;


    public Customer Customer { get; set; } = null!;
    public Product Product { get; set; } = null!;
}