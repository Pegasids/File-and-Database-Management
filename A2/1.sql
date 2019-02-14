prompt Question 1 - canopus

select distinct o.vehicle_id SERIAL_NO from people p, owner o where p.addr not like '%Edmonton%' and p.sin = o.owner_id;
