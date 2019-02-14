prompt Question 9 - canopus

select distinct  p.sin, p.name from people p, owner o
where o.owner_id = p.sin and o.vehicle_id in 
((select vehicle_no 
from vehicle_history
where average_price = 
(select MIN(vh.average_price)
from vehicle_history vh))
UNION
(select vehicle_no 
from vehicle_history
where number_sales = 
(select MAX(vh.number_sales)
from vehicle_history vh))
UNION
(select vehicle_no 
from vehicle_history
where total_tickets = 
(select MAX(vh.total_tickets)
from vehicle_history vh)));
