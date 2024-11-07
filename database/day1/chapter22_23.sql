-- use testdatabase;

-- 새 고객 추가
insert into customers (name, address, age, email) values('kiyeoun','south_korea',20,'acustomer@gamil.com');

-- 새 제품 추가
insert into products (name, productsNumber, price) values('table',10,3000);

-- 새 직원 추가
insert into employees (employeesNumber, position, lastname, firstname) values(727,'Assistant', 'yoo','hongjong');

-- 새 사무실 추가
insert into offices (officeCode,officeNumber, city,country) values('1999','773-2948','Suwon','south_korea');

-- 새 주문을 추가
insert into orders (orderNumber, orderdate,status, customerID) values(777, '2024-11-02','none', 555);

-- 주문 상세 정보를 추가
insert into orderdetails (orderNumber, productsNumber,quantity, price) values(778, 3034,5, 5000);

-- 지불 정보를 추가
insert into payments (customerID, amount, paymentDate) values(555, 5000, '2024-11-02');

-- 제품 라인을 추가
insert into productslines (productLine, textexplain) values('chair','blue and small stool');

-- 다른 지역의 고객을 추가
insert into customers (name, address, age,email) values('seungho', 'USA',30,'ccustomer@gmail.com');

-- 다른 카테고리의 제품 추가
insert into products (name, productsNumber, price) values('book',20, 2000);

-- custom 테이블에서 모든 고객 정보 조회
select * from customers;

-- products 테이블에서 모든 제품 목록 조회
select * from products;

-- employees 테이블에서 모든 직원 이름과 직급 조회 
select firstname, position from employees;

-- offices 테이블에서 모든 사무실의 위치를 조회
select city, country from offices;

-- orders 테이블에서 최근 10개의 주문을 조회
select * from orders order by orderDate desc limit 10;

-- orderdetailes 테이블에서 특정 주문의 모든 상세정보를 조회
select * from orderdetailes where orderNumber = 778;

-- payments 테이블에서 특정 고객의 모든 지불 정보를 조회
select * from payments where customerID = 555;

-- productslines 테이블에서 각 제품 라인의 설명을 조회
select productLine, textexplain from productslines ;

-- customers 테이블에서 특정 지역의 고객을 조회
select * from customers where country = 'USA';

-- products 테이블에서 특정 가격 범위의 제품을 조회
select * from products where price between 1500 and 2000;

-- customers 테이블에서 특정 고객의 주소를 갱신
update customers set address = 'gangnam' where customerID = 555;

-- products테이블에서 특정 제품의 가격을 갱신
update products set price = 4000 where productsNumber = 20;

-- employees테이블에서 특정 직원의 직급을 갱신
update employees set position = 'Manager' where employeesNumber = 727;

-- offices 테이블에서 특정 사무실의 전화번호를 갱신
update offices set officeNumber = '432-4830' where officecode = 1999;
 
-- orders 테이블에서 특정 주문의 상태를 갱신
update orders set status = 'moved' where orderNumber = 777;

-- orderdetails 테이블에서 특정 주문 상세의 수량을 갱신
update orderdetails set quantity = 7 where orderNumber = 778;

-- payments 테이블에서 특정 지불 금액을 갱신
update payments set amount = 8000 where customerID = 555;

-- productlines 테이블에서 특정 제품 라인의 설명을 갱신
update productlines set textexplain = 'red and stool' where productLine = 'chair'

-- customers 테이블에서 특정 고객의 이메일을 갱신
update customers set email = 'bcustomer@gmail.com' where name = 'kiyeoun'

-- products 테이블에서 여러 제품의 가격을 한 번에 갱신
update products set price = price * 1.7;

-- customers 테이블에서 특정 고객을 삭제
delete from customers where country = 'USA'

-- products 테이블에서 특정 제품을 삭제
delete from products where productNumber = 10;

-- employees 테이블에서 특정 직원을 삭제
delete from employees where employeesNumber = 777;
     
-- offices 테이블에서 특정 사무실을 삭제
delete from offices where officeCode = '1999';

-- orders 테이블에서 특정 주문을 삭제
delete from orders where ordersNumber = 777;

-- orderdetails 테이블에서 특정 주문 상세를 삭제
delete from orderdetails where orderNumber = 778;

-- payments 테이블에서 특정 지불 내역을 삭제
delete from payments where customerID = 555;

-- productlines 테이블에서 특정 제품 라인을 삭제
delete from productline where productLine = 'chair';

-- customers 테이블에서 특정 지역의 모든 고객을 삭제
delete from customers where country = 'south_korea';
     
-- products 테이블에서 특정 카테고리의 모든 제품을 삭제
delete from products where productNumber = 20;
