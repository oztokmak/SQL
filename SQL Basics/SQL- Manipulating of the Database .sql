--Select

--ANSII

Select ContactName Adi, CompanyName SirketAdi, City Sehir from Customers

Select * From Customers where City = 'London'
Select * From Products where CategoryID=1 or CategoryID=3
Select * From Products where CategoryID=1 and UnitPrice>=10
Select * From Products order by UnitPrice asc --ascending --descending
Select * From Products order by CategoryID, ProductName
Select count(*) from Products
Select CategoryID, count(*) From Products where UnitPrice>20 group by CategoryID having count(*)<10

--JOIN

Select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName From Products inner join Categories on Products.CategoryID = Categories.CategoryID

--DTO Data Transformation Object

Select * From Products p  left join [Order Details] od on p.ProductID = od.ProductID
Select * From Customers c  left join Orders o on c.CustomerID = o.CustomerID where o.CustomerID is null