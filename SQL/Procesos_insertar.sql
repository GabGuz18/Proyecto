use Cafe

select * from Stock
select * from Re_Stock
select * from Venta
select * from Vendedor


create procedure In_Stock (@Id int, @Nom varchar(30), @Precio money, @Cant int)
as 
begin try 
begin tran 
insert into Stock (Id_Producto, Nombre, Precio, Cantidad)
values (@Id, @Nom, @Precio, dbo.f_iva(@Precio))
commit 
end try 
begin catch
rollback
print 'Error al insertar los datos'
end catch 


create procedure In_Vendedor(@Id int, @Nom varchar(80), @Turno varchar(1))
as 
begin try 
begin tran 
insert into Vendedor(Id_Vendedor, Nombre, Turno)
values (@Id, @Nom, @Turno)
commit 
end try 
begin catch
rollback
print 'Error al insertar los datos'
end catch 


create procedure In_ReStock (@Id int, @Cant int, @Recibe int, @Fecha smalldatetime)
as 
begin try 
begin tran 
insert into Re_Stock (Id_Producto, Cantidad, Recibe, Fecha)
values (@Id, @Cant, @Recibe, @Fecha)
commit 
end try 
begin catch
rollback
print 'Error al insertar los datos'
end catch 


create procedure In_Venta (@Id_V int, @Id_P int, @Fecha smalldatetime, @Cant int, @Total int)
as 
begin try 
begin tran 
insert into Venta(Id_Vendedor, Id_Producto, Fecha, Cant_Vendida, Tot_Vendido)
values (@Id_V, @Id_P, @Fecha, @Cant, @Total)
commit 
end try 
begin catch
rollback
print 'Error al insertar los datos'
end catch 

exec In_Venta 1001, 101, '20210130', 2, 440
