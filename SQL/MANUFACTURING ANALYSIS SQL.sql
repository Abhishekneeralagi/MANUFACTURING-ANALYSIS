-- 1. Manufacture Qty
 select sum(Manufactured_Qty) as "Manufacture Qty" from prod_data;
 
 -- 2. Rejected Qty 
select sum(Rejected_Qty) as "Rejected Qty" from prod_data;

-- 3. Processed Qty
select sum(Processed_Qty) as "Processed Qty" from prod_data;

-- 4. Wastage Qty
select (sum(Rejected_Qty)/(sum(Processed_Qty))*100) as "Wastage Qty" from prod_data;

-- 5. Employee Wise Rejected Qty
select Emp_Name, sum(Rejected_Qty) as Total_Rejected
from prod_data
where Rejected_Qty !=0
group by Emp_Name
order by Total_Rejected DESC;

-- 6. Machine Wise Rejected Qty
select Machine_Name, sum(Rejected_Qty) as Total_Rejected
from prod_data
where Rejected_Qty !=0
group by Machine_Name
order by Total_Rejected desc;

-- 7. Manufacture Vs Rejected
select sum(Manufactured_Qty) as "Manufactured Qty", sum(Rejected_Qty) as "Rejected Qty" from prod_data;

-- 8. Department Wise Manufacture Vs Rejected
select Department_Name, sum(Manufactured_Qty) as "Manufactured Qty", sum(Rejected_Qty) as "Rejected Qty" 
from prod_data
group by Department_Name;

-- 9. Delivery status wise manufactured quanity
select Delivery_Period, sum(Manufactured_Qty) from prod_data
group by Delivery_Period;
