prompt Question 7 - canopus

select p.sin, p.name, p.addr from people p where p.sin = 
(select t.violator_no from ticket t where  t.vtype not like 'parking%'
and t.vdate > (current_date - 365)
group by t.violator_no
having count(*) = 3);
