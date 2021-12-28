select ti.trainer_id, bi.batch_id
from trainer_info as ti cross join batch_info as bi;



select ai.associate_id, ai.module_id, ai.start_date, ai.end_date, ai.Afeedbackgiven, ai.Tfeedbackgiven, ai.batch_id, ai.trainer_id,
bi.batch_owner, bi.batch_bu_name from associate_status as ai inner join batch_info as bi on ai.batch_id = bi.batch_id;



select ai.associate_id, ti.trainer_id
from associate_status as ai 
right outer join trainer_info as ti on ai.trainer_id = ti.trainer_id;


select ai.associate_id, ti.trainer_id 
from associate_status as ai
left outer join trainer_info as ti on ai.trainer_id = ti.trainer_id;


insert into associate_status(associate_id,module_id,batch_id) values ('A010','ANDRD4','B009');



select ai.associate_id, ti.trainer_id from associate_status as ai right outer join trainer_info as ti on ai.trainer_id = ti.trainer_id
union
select ai.associate_id, ti.trainer_id from associate_status as ai left outer join trainer_info as ti on ai.trainer_id = ti.trainer_id;
