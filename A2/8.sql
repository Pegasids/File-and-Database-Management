prompt Question 8 - canopus

CREATE VIEW vehicle_history 
as select a.vehicle_id VEHICLE_NO , count(distinct a.transaction_id)  NUMBER_SALES, avg(a.price) AVERAGE_PRICE , count(distinct t.ticket_no) TOTAL_TICKETS
from auto_sale a left outer join ticket t on a.vehicle_id = t.vehicle_id
group by a.vehicle_id;
