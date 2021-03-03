use Cafe

create procedure Mod_Stock (@Id int, @Nom varchar(30), @Precio money, @Cant int, @Mod int)
as 
begin try 
begin tran 
update Stock set 
Id_Producto = @Id, 
Nombre = @Nom, 
Precio = @Precio, 
Cantidad = @Cant
where Id_Producto = @Mod
commit 
end try 
begin catch
rollback
print 'Error al insertar los datos'
end catch 


create procedure Mod_Vendedor(@Id int, @Nom varchar(80), @Turno varchar(1), @Mod int)
as 
begin try 
begin tran 
update Vendedor set 
Id_Vendedor = @Id, 
Nombre = @Nom, 
Turno = @Turno
where Id_Vendedor = @Mod
commit 
end try 
begin catch
rollback
print 'Error al insertar los datos'
end catch 


create procedure Mod_ReStock (@Id int, @Cant int, @Recibe int, @Fecha smalldatetime, @Mod int)
as 
begin try 
begin tran 
update Re_Stock set 
Id_Producto = @Id, 
Cantidad = @Cant, 
Recibe = @Recibe, 
Fecha = @Fecha
where Id_Producto = @Mod
commit 
end try 
begin catch
rollback
print 'Error al insertar los datos'
end catch 


create procedure Mod_Venta (@Id_V int, @Id_P int, @Fecha smalldatetime, @Cant int, @Total int, @Mod int)
as 
begin try 
begin tran 
update Venta set 
Id_Vendedor = @Id_V,
Id_Producto = @Id_P, 
Fecha = @Fecha,
Cant_Vendida = @Cant, 
Tot_Vendido = @Total
where Id_Producto = @Mod
commit 
end try 
begin catch
rollback
print 'Error al insertar los datos'
end catch 