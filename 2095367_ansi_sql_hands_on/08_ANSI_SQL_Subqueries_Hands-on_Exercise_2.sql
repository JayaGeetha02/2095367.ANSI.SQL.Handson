use ansi_hands_on_ipm002;


select si.student_name,marks, sm.registration_number, subject_code from student_marks as sm
inner join student_info as si on si.registration_number = sm.registration_number
where sm.registration_number in (select registration_number from student_marks group by subject_code having max(marks));


select si.registration_number , si.student_name, sm.marks from student_marks as sm
inner join student_info as si on si.registration_number = sm.registration_number
where sm.registration_number in (select registration_number from student_marks group by subject_code having max(marks)) and
subject_code = 'EI05IP';


select student_name, registration_number from student_info
where registration_number = (select registration_number from student_marks where subject_code = 'EI05IP'
 order by marks desc
 limit 1 offset 1);


select registration_number from student_marks where marks >=(select avg(marks) from student_marks where subject_code = 'EI05IP');