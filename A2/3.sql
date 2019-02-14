prompt Question 3 - canopus

(select  dl.licence_no , p.name from people p, drive_licence dl, owner o, vehicle v where p.sin = dl.sin and p.sin = o.owner_id and v.serial_no =  o.vehicle_id and dl.class <> 'nondriving')
MINUS
(select dl.licence_no, p.name from people p, drive_licence dl, owner o, vehicle v where p.sin = dl.sin and p.sin = o.owner_id and v.serial_no =  o.vehicle_id and dl.class <> 'nondriving' and v.color = 'red');
