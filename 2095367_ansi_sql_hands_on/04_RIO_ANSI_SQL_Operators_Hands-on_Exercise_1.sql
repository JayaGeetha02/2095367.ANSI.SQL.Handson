select trainer_email
from trainer_info
where trainer_email
is null;

select trainer_id,trainer_name,trainer_track,trainer_location
from trainer_info
where trainer_experiance > 4 ;

select module_id,module_name,module_duration
from module_info
where module_duration > 200;


select trainer_id,trainer_name,trainer_qualification
from trainer_info
where trainer_qualification
not in ('bachelor of technology');


select module_id,module_name,module_duration
from module_info
where module_duration
between 200 and 300;


select trainer_id,trainer_name
from trainer_info
where trainer_name
like 'm%';

select trainer_id,trainer_name
from trainer_info
where trainer_name
like '%o%';


select module_id,module_name,module_duration
from module_info
where module_name
is not null;