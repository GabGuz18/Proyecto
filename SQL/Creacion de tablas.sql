create database Cafe

use Cafe

---Consulta---
create table Stock
(Id_Producto int primary key,
Nombre varchar(30),
Precio money,
Cantidad float)

---No trigger---
create table Vendedor
(Id_Vendedor int primary key,
Nombre varchar(80),
Turno varchar(1))


create table Venta
(Id_Vendedor int foreign key references Vendedor (Id_Vendedor),
Id_Producto int foreign key references Stock (Id_Producto),
Fecha smalldatetime,
Cant_Vendida float,
Tot_Vendido money )


---Trigger---
create table Re_Stock
(Id_Producto int foreign key references Stock (Id_Producto),
Id_Vendedor int foreign key references Vendedor (Id_Vendedor),
Cantidad float)

create table Registros
(IdVendedor int, 
fecha datetime)

create trigger Tr_ReStock
on Re_Stock
for insert 
as 
begin 
set nocount on
insert into Registros(IdVendedor,fecha) select Id_Vendedor,getdate() from inserted
end

select * from Stock
select * from Venta
select * from Vendedor
select * from Re_Stock