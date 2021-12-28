alter table module_info
add column module_infrafee float;



update module_info
set module_infrafee = 2.345 where module_id = 'O10SQL';



update module_info
set module_infrafee = 3.768 where module_id = 'O10PLSQL';



select round(module_infrafee,2) from module_info;



select module_id, module_name from module_info 
where module_name like upper('m%');



alter table module_info
add column module_start_date date;


alter table module_info
add column today_date date;



update module_info
set module_start_date = '2021-09-23' where module_id = 'DOTNT4';
update module_info
set module_start_date = '2021-10-23' where module_id = 'EM001';
update module_info
set today_date = current_date() where module_id = 'DOTNT4';
update module_info
set today_date = current_date() where module_id = 'EM001';



select module_id, module_name, module_start_date, today_date, datediff(today_date, module_start_date) as days_consumed
from module_info;



select concat(module_id,module_name) from module_info;



select upper(module_name) from module_info;



select module_name, substr(module_name,1,3) from module_info;

