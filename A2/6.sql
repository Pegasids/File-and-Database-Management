prompt Question 6 - canopus

select distinct p.name from people p, vehicle v, owner o where p.sin = o.owner_id and o.vehicle_id = v.serial_no and (v.maker, v.model)
not in 
(select v.maker, v.model
from vehicle v, vehicle_type vt 
where   vt.type_id = v.type_id
group by vt.type, v.maker, v.model, v.year
having count(*) >= all(select  count(*)  
from vehicle v, vehicle_type vt 
where   vt.type_id = v.type_id
group by vt.type, v.maker, v.model, v.year));
