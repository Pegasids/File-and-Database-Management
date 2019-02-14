insert into people values ('1000', 'Canopus', 160, 100, 'black', 'black', '9015 112St Edmonton T6G2C5', 'm', '01-FEB-94');

insert into people values ('1001', 'James', 180, 150, 'brown', 'black', '9919 1St Edmonton T6G2C4', 'm', '15-JAN-95');

insert into people values ('1002', 'Mary', 150, 100, 'black', 'red', '7171 2St Edmonton T6G6C5', 'f', '10-MAY-94');

insert into people values ('1003', 'Ben', 200, 180, 'black', 'black', '11 55St Vancouver V7A5P3', 'm', '01-DEC-83');

insert into people values ('9999', 'Jason', 160, 110, 'black', 'black', '9015 112St Calgary C6P2C1', 'm', '29-NOV-77');

insert into people values ('001', 'Mike', 160, 110, 'black', 'black', '9015 112St Calgary C6P2C1', 'm', '29-NOV-77');

insert into people values ('002', 'Mike', 180, 190, 'black', 'black', '8888 19St Calgary C6P2C4', 'm', '22-NOV-88');


insert into drive_licence values('999','9999','F',NULL,'01-FEB-15','01-FEB-16');

insert into drive_licence values('99','1000','N',NULL,'01-MAR-15','01-MAR-16');

insert into drive_licence values('100','1001','N',NULL,'01-NOV-15','01-NOV-16');

insert into drive_licence values('101','1002','F',NULL,'01-FEB-15','01-FEB-16');

insert into drive_licence values('102','1003','F',NULL,'01-JAN-15','01-JAN-16');


insert into driving_condition values(001, 'GOOD');

insert into driving_condition values(002, 'GOOD');

insert into driving_condition values(003, 'GOOD');

insert into driving_condition values(004, 'BAD');

insert into driving_condition values(005, 'BAD');


insert into restriction values('99', 004);

insert into restriction values('100', 005);


insert into vehicle_type values(1, 'SUV');

insert into vehicle_type values(2, 'seden');

insert into vehicle_type values(3, 'coupe');

insert into vehicle_type values(4, 'truck');


insert into vehicle values('001' , 'BMW' , 'x3', 2001, 'grey', 1);

insert into vehicle values('002' , 'honda' , 'civic', 1993, 'grey', 2);

insert into vehicle values('003' , 'BMW' , 'x3', 2001, 'grey', 1);

insert into vehicle values('004' , 'Benz' , 'ML', 2003, 'grey', 1);

insert into vehicle values('005' , 'BMW' , 'x6', 2004, 'grey', 1);


insert into owner values('1000', '004', 'y');

insert into owner values('1000', '005', 'y');

insert into owner values('1000', '001', 'y');

insert into owner values('1001', '001', 'n');

insert into owner values('1002', '002', 'y');

insert into owner values('1003', '001', 'n');



insert into auto_sale values(2,'001','1000','004', '10-FEB-95', 80000);

insert into auto_sale values(3,'001','1000','005', '10-FEB-13', 30000);

insert into auto_sale values(5,'1000','1001','004', '11-FEB-12', 20000);

insert into auto_sale values(1,'002','1000','001', '10-FEB-11', 50000);

insert into auto_sale values(4,'002','1002','002', '12-JAN-16', 100000);


insert into ticket_type values('parking', 100);

insert into ticket_type values('speed', 50);

insert into ticket_type values('texting', 60);


insert into ticket values(995, '1000','001', '9999', 'parking', '10-JAN-16', 'downtown', NULL);

insert into ticket values(994, '1000','001', '9999', 'speed', '01-FEB-16', 'downtown', NULL);

insert into ticket values(999, '1000','001', '9999', 'speed', '10-FEB-16', 'downtown', NULL);

insert into ticket values(998, '1001','002', '9999', 'speed', '11-FEB-15', 'park', NULL);

insert into ticket values(997, '1003','001', '9999', 'texting', '09-FEB-15', 'park', NULL);

insert into ticket values(996, '1000','001', '9999', 'speed', '11-FEB-15', 'downtown', NULL);





















