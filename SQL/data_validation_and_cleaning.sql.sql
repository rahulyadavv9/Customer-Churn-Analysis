select * ,
row_number() over (partition by Activeid order by Activeid) n
from [dbo].[Copy of ActiveCustomer] 

select * from  [dbo].[Copy of CreditCard]
select * ,
row_number() over (partition by Creditid order by Creditid) n
 from [dbo].[Copy of CreditCard]


 select * from [dbo].[Copy of ExitCustomer]
 select *,
 row_number() over (partition by ExitID order by ExitID) n
 from dbo.[Copy of ExitCustomer]

 select * from dbo.[Copy of Gender]
 select *,
 ROW_NUMBER() over(partition by Genderid order by genderid) n
 from dbo.[Copy of Gender]


 select * from dbo.[Copy of Geography]
  select *,
 ROW_NUMBER() over(partition by Geographyid order by geographyid) n
 from dbo.[Copy of Geography]


 select * from [dbo].[Copy of Bank_Departure];

 with cte as(
 select *,
 ROW_NUMBER() over(partition by customerid order by customerid) rn
 from [dbo].[Copy of Bank_Departure] 
 )

 select * from cte      -- its is necessasry 
 where rn>1;

 ---to find the nulls
 select * from [dbo].[Copy of Bank_Departure]
 where customerid is null
 or 
 creditscore is null
 or
 Geographyid is null
 or
 genderid is null
 or
 Age is null
 or
 tenure is null


 select * from [dbo].[Copy of CustomerInfo];

 with cte as
 (
 select *,
 row_number() over(partition by customerid order by Customerid) rn
 from [dbo].[Copy of CustomerInfo]
 )
 select * from cte
 where rn>1

 select * from [dbo].[Copy of CustomerInfo]
 where customerid is null
 or
 Surname is null

 --------	TREATING THE EMP WHERE ISACTIVE AND EXITED BOTH ARE TRUE 
 select * from [dbo].[Copy of Bank_Departure]
 where IsActiveMember =1 and Exited =1;

 update [dbo].[Copy of Bank_Departure]
 set Exited =0 
 where IsActiveMember =1 and Exited =1;

 SELECT * FROM [dbo].[Copy of ActiveCustomer]
  SELECT * FROM [dbo].[Copy of Bank_Departure]
  SELECT * FROM[dbo].[Copy of CreditCard]
  SELECT * FROM[dbo].[Copy of CustomerInfo]
  SELECT * FROM[dbo].[Copy of ExitCustomer]
  SELECT * FROM[dbo].[Copy of Gender]
  SELECT * FROM[dbo].[Copy of Geography]

   SELECT AVG(estimatedsalary) FROM [dbo].[Copy of Bank_Departure]
    --- checking 
   select count(*)  FROM [dbo].[Copy of Bank_Departure]
   where estimatedsalary < ( select avg(estimatedsalary) from [dbo].[Copy of Bank_Departure] )
   and exited =1
   
 
 -------------------------------------------------CREATING THE DAX'S:---------------------------------------------------------------
													--DAY2

 select * from [dbo].[Copy of Bank_Departure]

-- Count of active Customer
select count(*)
from [dbo].[Copy of Bank_Departure]
where Isactivemember=1;


--Total Customers
select count(*)
from [dbo].[Copy of Bank_Departure];


--Inactive Customer 
select count(*)
from [dbo].[Copy of Bank_Departure]
where Isactivemember=0;


--Credit Card Holder
select count(*)
from [dbo].[Copy of Bank_Departure]
where HasCrCard=1;



--Non Credit Card holder
select count(*)
from [dbo].[Copy of Bank_Departure]
where HasCrCard=0;


--Exit Customers
select count(*)
from [dbo].[Copy of Bank_Departure]
where Exited=1;



--Retain Customer
select count(*)
from [dbo].[Copy of Bank_Departure]
where Exited=0;


-- exit customer by credit type 
-- for poor
select count(*)
from [dbo].[Copy of Bank_Departure]
where Exited=1 and CreditScore<580

