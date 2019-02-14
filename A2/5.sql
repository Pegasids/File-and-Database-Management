prompt Question 5 - canopus

select extract(year from a.s_date) YEAR, vt.type,  avg(a.price) AVERAGE_SELLING_PRICE from vehicle_type vt, vehicle v, auto_sale a
where v.type_id =  vt.type_id and v.serial_no =  a.vehicle_id 
group by vt.type, extract(year from a.s_date)
having extract(year from a.s_date) = 2010 OR extract(year from a.s_date) = 2011 OR extract(year from a.s_date) = 2012 OR extract(year from a.s_date) = 2013;
