prompt Question 2 - canopus

select distinct p.name, p.addr  from people p, owner o1, owner o2, owner  o3,  vehicle_type vt
where o1.vehicle_id <> o2.vehicle_id and o2.vehicle_id <> o3.vehicle_id and o3.vehicle_id <> o1.vehicle_id and o1.owner_id = o2.owner_id and o2.owner_id = o3.owner_id and o3.owner_id = o1.owner_id
and o1.is_primary_owner = 'y' and o2.is_primary_owner = 'y' and o3.is_primary_owner = 'y' and o1.owner_id = p.sin and vt.type = 'SUV';
