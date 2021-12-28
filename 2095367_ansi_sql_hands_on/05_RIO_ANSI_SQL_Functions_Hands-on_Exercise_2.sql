use ansi_hands_on_ipm002;

select upper(student_name), upper(branch) from student_info;


select lower( subject_code), lower(subject_name) from subjects_info;



select date_format(date_of_birth, '%b %d, %Y') from student_info;
select date_format(date_of_birth, '%Y/%m/%d') from student_info;



select student_name, contact, email_id, year(current_date())-year(date_of_birth) as student_age from student_info;



select si.registration_number, si.student_name, sm.semester , avg(sm.marks) from student_info as si
inner join student_marks as sm on si.registration_number = sm.registration_number group by sm.semester;



select si.student_name, si.registration_number, max(sm.marks) from student_info as si inner join
student_marks as sm on si.registration_number = sm.registration_number;


select si.student_name, si.registration_number, max(sm.marks) from student_info as si inner join
student_marks as sm on si.registration_number = sm.registration_number where sm.subject_code = 'EI05IP';



select semester, avg(gpa) 
from student_result group by semester;



select student_name,registration_number,branch,contact,Date_of_birth,date_of_joining,address,case when 
email_id is null then 'no_valid_email_address'
else email_id end as email_id 
from student_info;      



select student_name,case when
branch='EEE'then 'Electrical And Electronic Engineering'
when branch='ECE' then 'Electronics And Communication Engineering'
else branch end as 
branch,sinfo.registration_number,sresult.semester,sresult.gpa
from student_info as sinfo
inner join student_result as sresult on sresult.registration_number=sinfo.registration_number;