use ansi_hands_on_ipm002;

select * from student_info where email_id is not null;

select marks, registration_number from student_marks
where marks > 50;

select si.registration_number, si.Student_name, sm.semester, sm.marks, sbi.subject_name
from student_info as si inner join student_marks as sm on si.registration_number = sm.registration_number
inner join subjects_info as sbi;

select si.Student_name, si.registration_number, sm.subject_code, sm.marks, sm.semester,sbi.subject_name
from student_info as si inner join student_marks as sm on si.registration_number = sm.registration_number
inner join subjects_info as sbi on sbi.subject_code = sm.subject_code where sm.marks>50;

select * from student_result
order by is_eligible_scholarship desc;

select si.registration_number, si.student_name, sm.marks, sbi.weightage as "Weightage marks = sm.Marks*sbi.weightage/100"
from student_info as si inner join student_marks as sm on si.registration_number = sm.registration_number
inner join subjects_info as sbi;

select * from student_info where student_name like 'M%';

select si.registration_number, si.student_name, si.email_id, sm.semester, sm.marks
from student_info as si inner join student_marks as sm on si.registration_number = sm.registration_number
where si.email_id is not null;

select si.student_name, si.registration_number, sm.marks from student_info as si
inner join student_marks as sm on si.registration_number = sm.registration_number
where sm.marks between 60 and 100;

select si.student_name, si.registration_number, sm.marks from student_info as si
inner join student_marks as sm on si.registration_number = sm.registration_number
where si.student_name not like 'J%';

select si.student_name, si.registration_number, sm.marks, sm.subject_code from student_info as si
inner join student_marks as sm on si.registration_number = sm.registration_number 
where sm.subject_code like 'EE01DCF' or sm.subject_code like 'EC02MUP';	

select * from student_info where student_name like '%on';

