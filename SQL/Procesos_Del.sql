use Cafe

create procedure Del_Stock (@Id int)
as 
begin try 
begin tran 
delete from Stock where Id_Producto = @Id
commit 
end try 
begin catch
rollback
print ERROR_MESSAGE()
print 'Error al insertar los datos'
end catch 


create procedure Del_Vendedor(@Id int)
as 
begin try 
begin tran 
delete from Vendedor where Id_Vendedor = @Id
commit 
end try 
begin catch
rollback
print ERROR_MESSAGE()
print 'Error al insertar los datos'
end catch 


create procedure Del_ReStock (@Id int)
as 
begin try 
begin tran 
delete from Re_Stock where Id_Producto = @Id
commit 
end try 
begin catch
rollback
print ERROR_MESSAGE()
print 'Error al insertar los datos'
end catch 


create procedure Del_Venta (@Id_V int, @Id_P int, @Total int)
as 
begin try 
begin tran 
delete from Venta where Id_Vendedor = @Id_V and Id_Producto = @Id_P and Tot_Vendido = @Total
commit 
end try 
begin catch
rollback
print ERROR_MESSAGE()
print 'Error al insertar los datos'
end catch 