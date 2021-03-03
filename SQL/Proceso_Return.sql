use Cafe

create proc SumVendido (@Id_V int = null)
as
begin 
	if @Id_V is null 
		begin
			PRINT 'Error'
			RETURN  1
		end
	select Id_Vendedor,Id_Producto,Cant_Vendida from Venta
	where Id_Vendedor = 3
	group by cube(Id_Vendedor,Id_Producto), Cant_Vendida
	RETURN 0
end 

create function f_iva (@precio money)
returns money 
as
begin 
return @precio*1.16
end
