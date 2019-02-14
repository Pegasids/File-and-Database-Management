prompt Question 4 - canopus

select  p.name from people p, drive_licence dl, ticket t, ticket_type tt 
where dl.class <> 'nondriving' and  tt.vtype = t.vtype and dl.sin = t.violator_no and p.sin = dl.sin
group by dl.sin, p.name
having sum(tt.fine) > 
((select sum(tt.fine) from people p, drive_licence dl, ticket t, ticket_type tt where p.sin = dl.sin and dl.class <> 'nondriving' and t.violator_no = p.sin and t.vtype = tt.vtype)/
( select count(*) from people p, drive_licence dl where p.sin = dl.sin and dl.class <> 'nondriving'));
