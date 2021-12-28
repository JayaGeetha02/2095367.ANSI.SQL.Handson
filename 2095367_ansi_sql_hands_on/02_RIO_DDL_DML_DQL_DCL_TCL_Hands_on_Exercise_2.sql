use ansi_hands_on_ipm002;

create table student_info (registration_number varchar(20), Student_name varchar(30), branch varchar(20), contact varchar(20), Date_of_birth date, date_of_joining date, address varchar(250), email_id varchar(250));
create table subjects_info (subject_code varchar(10), subject_name varchar(30), weightage int);
create table student_marks (registration_number varchar(20), subject_code varchar(10), semester int, marks int);
create table student_result (registration_number varchar(20), semester int, gpa float, is_eligible_scholarship varchar(3));

insert into student_info values
('MC1010301','James','MCA','9714589787', '1984-01-12','2010-07-08','No 10,South Block,Nivea','james.mca@yahoo.com'),
('BEC111402','Manio','ECE','8912457875','1983-02-23','2011-06-25','8/12,Park View,Sierra','manioma@gmail.com'),
('BEEI101204','Mike','EI','8974567897','1983-02-10','2010-08-25','Crossvilla,NY','mike.james@ymail.com'),
('MB11105','Paulson','MBA','8547986123','1984-12-13','2010-08-08','Lakeview,NJ','paul.son@reddifmail.com');

insert into subjects_info values
('EE01DCF','DCF',30), ('EC02MUP','Microprocessor',40),('MC06DIP','Digital Image Processing',30),('MB03MAR','Marcketing Techniques',20),
('EI05IP','Instrumentation Precision',40),('CPSC02DS','Data Structures',40);

insert into student_marks values
('MC101301','EE01DCF',1,75),('MC101301','EC02MUP',1,65),('MC101301','MC06DIP',1,70),
('BEC111402','EE01DCF',1,55),('BEC111402','EC02MUP',1,80),('BEC111402','MC06DIP',1,60),
('BEEI101204','EE01DCF',1,85),('BEEI101204','EC02MUP',1,78),('BEEI101204','MC06DIP',1,80),
('BEEI101204','MB03MAR',2,75),('BEEI101204','EI05IP',2,65),('BEEI101204','CPSC02DS',2,75),
('MB11105','EE01DCF',1,65),('MB11105','EC02MUP',1,68),('MB11105','MC06DIP',1,63),
('MB11105','MB03MAR',2,85),('MB11105','EI05IP',2,74),('MB11105','CPSC02DS',2,62);

insert into student_result values
('MC101301',1, 7.5,'Y'),('BEC111402',1,7.1,'Y'),('BEE1101204',1,8.3,'Y'),('BEE1101204',2,6.9,'N'),('MB11105',1,6.5,'N'),('MB11105',2,6.8,'N');

