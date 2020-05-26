use classicmodels;
show tables ;
select * from customers;
delimiter //
create procedure getCustomerCountByCity(
IN in_city varchar(100) ,
OUT total int )
begin
    select count(customerNumber)
    into total
    from customers
        where city = in_city;

end //
delimiter ;
call getCustomerCountByCity('Nantes',@total);
select @total;
select * from  customers;
drop procedure getCustomerCountByCity;

delimiter //
create procedure getCustomerCountByCountry(
In in_country varchar(255),out total int)
begin
    select count(customerNumber)
        into total
    from customers where country = in_country;
end //
delimiter ;
call getCustomerCountByCountry('USA',@total);
select @tota