use ansi_hands_on_ipm002;


select start_date,count(*) as total_no_of_associates_joined 
from associate_status group by start_date;


          

select start_date,count(*) as number_of_associates
from associate_status where trainer_id='F001' group by start_date;

              
              
select start_date,count(*) as number_of_associates
from associate_status where trainer_id='F001' group by start_date;


select start_date,count(*) as number_of_associates
from associate_status group by start_date 
having count(*)>2;



select * from module_info order by module_duration;


select ainfo.associate_name,minfo.module_id,minfo.module_name,minfo.module_infrafee
from associate_status as astatus
inner join associate_info as ainfo on ainfo.associate_id=astatus.associate_id
inner join module_info as minfo on minfo.module_id=astatus.module_id
order by minfo.module_infrafee desc;