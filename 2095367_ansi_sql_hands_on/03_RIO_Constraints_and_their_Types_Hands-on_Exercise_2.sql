use ansi_hands_on_ipm002;


create table Students_Infos(
Reg_Number varchar(20) primary key,
Student_Name varchar(30) not null,
Branch varchar(30),
Contact_Number varchar(30),
Date_of_Birth varchar(15),
Date_of_joining datetime default current_timestamp
);

create table Subject_Marks(
Subject_Code varchar(20) primary key,
Subject_Name varchar(20) not null,
Weightage int not null
);

create table Students_Marks(
Registration_Number varchar(20),
foreign key (Registration_Number) REFERENCES Students_Info(Registration_Number),
Subject_Code varchar(20),
foreign key (Subject_Code) REFERENCES Subject_Marks(Subject_Code),
Semester int,
Marks int
);

create table Students_Result(
Registration_Number varchar(20),
foreign key (Registration_Number) REFERENCES Students_Info(Registration_Number),
Semester int,
GPA double,
Is_Eligible varchar(4) default 'yes'
);

alter table subject_marks
modify Subject_Name varchar(20) not null unique;

alter table student_info
modify Contact varchar(30) unique;

alter table student_info
 ADD CHECK (Date_of_birth < date_of_joining);
 
alter table student_marks
ADD CHECK (Marks<=100);

alter table student_result
add check (GPA<=10);

alter table students_result
add check (Is_Eligible='Y' or Is_Eligible='N');
