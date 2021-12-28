use ansi_hands_on_ipm002;


select si.Student_name,sm.Subject_code,sm.Marks
from student_info as si
inner join student_marks as sm on si.registration_number=sm.registration_number;



select si.Student_name,sm.Subject_code,sm.Marks
from student_info as si
inner join student_marks as sm on si.registration_number=sm.registration_number
where sm.Marks>=65;


select si.registration_number, si.Student_name,max(sr.GPA )
from student_info as si
inner join student_result as sr on si.registration_number=sr.registration_number;




create table student_backup_info
(
Registration_Number varchar(10) primary key,
Student_Name varchar(30) not null,
Branch Varchar(20),
Contact_number varchar(12),
Date_of_birth date not null,
Date_of_joining date default (current_date),
Address varchar(250),
Email varchar(250)
);

insert into student_backup_info(Registration_number,  Student_name, Branch, Contact_number, Date_of_birth, Date_of_joining, Address, Email )
values ('MC101301', 'James','MCA',9714589787, '1984-01-12','2010-07-08','No 10,South Block,Nivea','james.mca@yahoo.com'),
	   ('BEC111402','Manio','ECE',8912457875,'1983-02-23','2011-06-25','8/12,Park View,Sieera','manioma@gmail.com'),
       ('BEEI101204','Mike','EIE',8974567897,'1983-02-10','2010-08-25','Cross villa,NY','mike.james@ymail.com'),
       ('MB111305','Paulson','MBA',8547986123,'1984-12-13','2010-08-08','Lake view,NJ','paul.son@rediffmail.com');

insert into student_info(Registration_number,  Student_name, Branch, Contact, Date_of_birth, Date_of_joining, Address, Email_id )
values ('BEC101334', 'Keerthana','ECE',9164614567, '1984-08-25','2011-09-18','No 25,north Block,bangalore','keerth@yahoo.com'),
	   ('BIS113495','Mainak','ISE',8913789875,'1983-11-03','2011-02-05','8/12,Park View,mysore','mainakh132@gmail.com'),
       ('MCI176204','John','MCA',8973017897,'1983-04-10','2010-08-16','Cross villa,USA','John.wills@ymail.com'),
       ('MB116705','Smith','ME',8547942387,'1984-05-17','2010-06-08','Lake view,NY','smith398brown@rediffmail.com');
       
select si.* from student_info as si
left outer join student_backup_info as sbi on si.registration_number = sbi.Registration_number;


select si.* from student_info as si
left outer join student_backup_info as sbi on si.registration_number = sbi.Registration_number;

