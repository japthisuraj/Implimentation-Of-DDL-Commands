create database ProductDB2;
Use ProductDB2;
create table products (ProductID int,
                       ProductName varchar(255),
                       Category varchar(255),
                       Price int,
                       StockQuantity int,
                       ManufactureDate date,
                       ExpiryDate  date,
                       SupplierName varchar(255));
alter table products add column Description varchar(255) ;
alter table products modify column category varchar(150);
alter table products drop column ExpiryDate;
alter table products add constraint unique(ProductName);
alter table products drop constraint ProductName;
alter table products change column Price ProductPrice int;
insert into products values(1,"abb","bbb","222",1000,"2000-08-20","sss","rrr"),
(2,"bbb","ccc","233",1001,"2002-08-22","srr","rrs"),
(3,"be","ccu","234",1031,"2003-08-22","rsr","rks"),
(4,"bb","cc","233",101,"2002-08-12","sr","rs"),
(5,"bes","cru","236",103,"2003-08-21","rr","rk"),
(6,"bab","czz","231",1001,"2002-08-22","srr","rrs"),
(7,"bes","cru","239",1033,"2004-08-24","rtr","rps"),
(8,"bqq","ccc","2321",1301,"2012-08-22","sror","uyrrs"),
(9,"bzz","cttu","2343",1531,"2006-08-2","ror","rrrs"),
(10,"bzzo","ctt","2843",1731,"2009-08-2","roro","rrrps");
insert into products (StockQuantity,Category,SupplierName,ProductPrice,ProductID,ManufactureDate,Description,ProductName)
values(1,"abb","bbb","222",1000,"2000-08-20","sss","rrr"),
(2,"bbb","ccc","233",1001,"2002-08-22","srr","rrs"),
(3,"be","ccu","234",1031,"2003-08-22","rsr","rks"),
(4,"bb","cc","233",101,"2002-08-12","sr","rs"),
(5,"bes","cru","236",103,"2003-08-21","rr","rk"),
(6,"bab","czz","231",1001,"2002-08-22","srr","rrs"),
(7,"bes","cru","239",1033,"2004-08-24","rtr","rps"),
(8,"bqq","ccc","2321",1301,"2012-08-22","sror","uyrrs"),
(9,"bzz","cttu","2343",1531,"2006-08-2","ror","rrrs"),
(10,"bzzo","ctt","2843",1731,"2009-08-2","roro","rrrps");
insert into products (StockQuantity,Category,SupplierName,ProductPrice,ProductID,ManufactureDate,Description,ProductName)
values(1,"abb","bbb","222",1000,"2000-08-20","sss","rrr"),
(2,"bbb","ccc","233",1001,"2002-08-22","srr","rrs"),
(3,"be",null,"234",1031,"2003-08-22","rsr","rks"),
(4,"bb","cc","233",101,"2002-08-12","sr","rs"),
(5,"bes","cru","236",103,"2003-08-21",null,"rk"),
(6,"bab","czz","231",1001,"2002-08-22","srr","rrs"),
(7,"bes","cru","239",1033,"2004-08-24",null,"rps"),
(8,"bqq","ccc","2321",1301,"2012-08-22","sror","uyrrs"),
(9,"bzz",null,"2343",1531,"2006-08-2","ror","rrrs"),
(10,"bzzo","ctt","2843",1731,null,"roro","rrrps");

update products set Category="abcd" where Category="bzz";
update products set Category="Food";
delete from products where ProductID=2;
delete from products;
select * from products;
