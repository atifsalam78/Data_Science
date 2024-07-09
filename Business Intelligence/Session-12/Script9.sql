USE sales_orders;
-- SELECT ProductName, RetailPrice, QuantityOnHand, convert(replace(RetailPrice,",",""), Decimal(15,2))*QuantityOnHand As InventoryValue
-- FROM products

SELECT OrderNumber, OrderDate, ShipDate, DateDiff(str_to_date(ShipDate, "%d/%m/%Y"),str_to_date(OrderDate, "%d/%m/%Y")) as DateElapesd
FROM orders