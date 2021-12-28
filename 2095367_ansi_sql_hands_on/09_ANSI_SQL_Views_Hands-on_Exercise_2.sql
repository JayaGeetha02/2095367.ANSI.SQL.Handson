use ansi_hands_on_ipm002;


create view student_gpa_emp_id as
select si.student_name, sr.registration_number, sr.semester, sr.gpa from student_result as sr
join student_info as si on si.registration_number = sr.registration_number;


select * from student_gpa_emp_id where gpa>5;


create or replace view student_average_gpa_emp_id as select si.student_name, sr.registration_number,
avg(gpa) 'average_gpa' from student_result as sr
join student_info as si on si.registration_number = sr.registration_number group by registration_number;
select * from student_average_gpa_emp_id;


SELECT * from student_average_gpa_emp_id where average_gpa>7;


create index index_1 on student_marks(semester);

alter table student_marks 
drop index index_1 ;


 create unique index index_2 on student_info(email_id);