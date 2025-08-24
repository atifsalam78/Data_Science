use Scm_Logistic
declare @order_id int = 0;
declare @order_date datetime = getdate();
declare @origin_port int = 0;
declare @carrier int = 0;
declare @tpt int = 0;
declare @service_level int = 0;
declare @ship_ahead_day_count int = 0;
declare @ship_late_day_count int = 0;
declare @customer int = 0;
declare @product_id int = 0;
declare @plant_code int = 0;
declare @destination_port int = 0;
declare @unit_qty int = 0;
declare @weight int = 0;

declare @i int = 1

while (@i <=10)
	begin
		waitfor delay '00:00:01'
		set @order_id = ABS(checksum(newid()) % 999999);
		set @order_date = GETDATE();
		set @origin_port = ABS(checksum(newid()) % 10) + 10;
		set @carrier = (ABS(checksum(newid()) % 5) + 1) + 10;
		set @tpt = ABS(checksum(newid()) % 999999);
		set @service_level = ABS(checksum(newid()) %5) + 1;
		set @ship_ahead_day_count = ABS(checksum(newid()) % 999999);
		set @ship_late_day_count = ABS(checksum(newid()) % 999999);
		set @customer = ABS(checksum(newid()) % 5) + 1;
		set @product_id = ABS(checksum(newid()) % 999999);
		set @plant_code = ABS(checksum(newid()) % 3) + 1;
		set @destination_port = ABS(checksum(newid()) % 5) +1;
		set @unit_qty = ABS(checksum(newid()) % 10) + 1;
		set @weight = abs(checksum(newid()) % 10) +1;
		insert into dbo.Orders values (@order_id, @order_date, @origin_port, @carrier, @tpt, @service_level,
		@ship_ahead_day_count, @ship_late_day_count, @customer, @product_id, @plant_code, @destination_port, @unit_qty, @weight);
		set @i = @i + 1;
	end
