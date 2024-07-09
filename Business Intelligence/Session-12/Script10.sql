USE sales_orders;

SELECT ProductNumber, WholesalePrice, convert(replace(WholesalePrice,",",""),Decimal(15,2))*0.95 As IncreaseWholesalePrice
FROM product_vendors