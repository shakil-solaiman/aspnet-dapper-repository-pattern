create database RetailShopDb
--drop database RetailShopDb
use RetailShopDb


insert into Products (ProductName, Price, StockQuantity) values
('Rice 1kg', 80, 100),
('Cooking Oil 1L', 170, 50),
('Sugar 1kg', 120, 70),
('Milk 1L', 90, 40);

insert into Customers (CustomerName, Phone) values
('Solaiman', '01725098836'),
('Shakil', '01725098596'),
('Zaman', '01725099875');

insert into Sales (CustomerId, ProductId, Quantity, SaleDate) values
(1, 1, 2, '2026-10-01'),
(1, 2, 1, '2026-10-02'),
(2, 3, 3, '2026-10-03'),
(3, 4, 2, '2026-10-04');



insert into Products (ProductName, Price, StockQuantity) values
('Miniket Rice 5kg', 375, 80),
('Nazirshail Rice 5kg', 420, 60),
('Chinigura Rice 1kg', 140, 50),
('Rupchanda Soybean Oil 2L', 335, 45),
('Teer Soybean Oil 5L', 810, 30),
('Radhuni Mustard Oil 500ml', 160, 55),
('Fresh Refined Sugar 1kg', 130, 90),
('Deshi Brown Sugar 1kg', 160, 40),
('Aarong Dairy Liquid Milk 1L', 95, 65),
('Pran Powder Milk 500g', 420, 50),
('Dano Daily Pusti 1kg', 780, 25),
('Fresh Atta 2kg', 125, 75),
('Teer Maida 2kg', 145, 60),
('Deshi Masoor Dal 1kg', 150, 85),
('Anchor Yellow Pea Dal 1kg', 75, 110),
('Ispahani Mirzapore Tea 400g', 230, 70),
('Taaza Black Tea 400g', 210, 50),
('ACI Pure Iodized Salt 1kg', 42, 150),
('Mollah Salt 1kg', 38, 120),
('Radhuni Turmeric Powder 200g', 85, 90),
('Radhuni Chilli Powder 200g', 110, 85),
('Radhuni Cumin Powder 100g', 135, 60),
('Pran Green Mango Pickle 400g', 150, 40),
('Ahmed Mixed Pickle 400g', 165, 35),
('Ruchi Hot Tomato Sauce 340g', 110, 55),
('Olympic Energy Plus Biscuit 300g', 60, 130),
('Lexus Vegetable Cracker 250g', 75, 100),
('Pran Potata Spicy Biscuit 100g', 30, 200),
('Tibbet Snow Cream 50g', 90, 45),
('Wheel Washing Powder 1kg', 115, 80);



insert into Customers (CustomerName, Phone) values
('Tanvir Ahmed', '01712456789'),
('Nusrat Jahan', '01819345671'),
('Mehedi Hasan', '01911789456'),
('Farzana Akter', '01678123450'),
('Arifur Rahman', '01309876543'),
('Sharmin Sultana', '01521456780'),
('Tariqul Islam', '01723568912'),
('Jannatul Ferdous', '01834901234'),
('Shakib Al Hasan', '01945123456'),
('Tamanna Haque', '01612789345'),
('Mahmudul Hasan', '01756234189'),
('Afroza Begum', '01890123789'),
('Kamrul Ahsan', '01312345678'),
('Sultana Razia', '01516789012'),
('Rakibul Islam', '01789123456'),
('Sabrina Yasmin', '01867452310'),
('Nazmul Huda', '01978234561'),
('Rifat Jahan', '01645891230'),
('Ashiqur Rahman', '01711098765'),
('Shamima Nasrin', '01823901234'),
('Shahadat Hossain', '01934876512'),
('Bilkis Banu', '01552341290'),
('Mizanur Rahman', '01323456789'),
('Laila Arjumand', '01734561289'),
('Zubair Hossain', '01845123890'),
('Fatema Tuz Zohra', '01956789123'),
('Anowar Hossain', '01623451278'),
('Tasnim Khanom', '01767892345'),
('Monirul Islam', '01878901234'),
('Farhana Parvin', '01989012345');



insert into Sales (CustomerId, ProductId, Quantity, SaleDate) values
(1, 4, 2, '2026-08-01'),
(3, 12, 1, '2026-08-03'),
(7, 2, 3, '2026-08-05'),
(2, 18, 1, '2026-08-07'),
(15, 6, 4, '2026-08-10'),
(8, 25, 2, '2026-08-12'),
(12, 9, 1, '2026-08-14'),
(4, 14, 5, '2026-08-16'),
(19, 3, 2, '2026-08-19'),
(6, 22, 3, '2026-08-21'),
(11, 1, 6, '2026-08-24'),
(5, 17, 2, '2026-08-26'),
(14, 8, 1, '2026-08-28'),
(9, 20, 3, '2026-08-30'),
(22, 15, 2, '2026-09-02'),
(18, 5, 4, '2026-09-05'),
(2, 28, 1, '2026-09-07'),
(25, 11, 3, '2026-09-10'),
(13, 7, 2, '2026-09-12'),
(10, 24, 1, '2026-09-15'),
(28, 13, 5, '2026-09-18'),
(16, 30, 2, '2026-09-20'),
(21, 16, 4, '2026-09-23'),
(7, 27, 1, '2026-09-25'),
(29, 10, 3, '2026-09-28'),
(30, 19, 2, '2026-10-01'),
(17, 26, 6, '2026-10-03'),
(23, 23, 1, '2026-10-05'),
(26, 21, 2, '2026-10-07'),
(20, 29, 3, '2026-10-08');


select * from Products
select * from Customers
select * from Sales

--truncate table Products
--truncate table Customers
--truncate table Sales



create procedure GetSalesDetails
as
begin
    select c.CustomerName, p.ProductName, s.Quantity, s.SaleDate
    from Sales as s
    inner join 
    Customers as c
    on s.CustomerId = c.CustomerId
    inner join Products as p
    on s.ProductId = p.ProductId
    order by s.SaleDate;
end;


--drop procedure GetSalesDetails;

EXEC GetSalesDetails;