use ansi_hands_on_ipm002;


select sinfo.student_name,sinfo.registration_number,sresult.gpa 
from student_info as sinfo
inner join student_result as sresult on sresult.registration_number=sinfo.registration_number
order by sresult.gpa desc;


select * from student_info order by student_name asc;


select * from student_info order by datediff(date_of_joining,Date_of_birth) asc;


select sinfo.registration_number,sinfo.student_name,semester,gpa
from student_info as sinfo
inner join student_result as sresult on sresult.registration_number=sinfo.registration_number
order by sresult.gpa desc;


select registration_number,gpa 
from student_result
order by is_eligible_scholarship desc;



select si.registration_number, si.student_name, sr.semester, max(sr.gpa) from student_info as si inner join
student_result as sr on si.registration_number = sr.registration_number
group by sr.semester;



select si.registration_number, si.student_name, sr.semester, min(sr.gpa) from student_info as si inner join
student_result as sr on si.registration_number = sr.registration_number
group by sr.semester;