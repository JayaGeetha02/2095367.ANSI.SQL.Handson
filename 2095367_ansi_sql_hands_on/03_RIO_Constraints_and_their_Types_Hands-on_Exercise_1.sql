use ansi_hands_on_ipm002;
create table trainers_info
(
trainer_id varchar(20) primary key,
salutation varchar(7),
trainer_name varchar(30),
trainer_location varchar(30),
trainer_track varchar(15),
trainer_qualification varchar(100),
trainer_experiance int not null,
trainer_email varchar(100),
trainer_password varchar(20)
);

create table batchs_info
(
batch_id varchar(20) primary key,
batch_owner varchar(30),
batch_bu_name varchar(30)
);

create table modules_info
(
module_id varchar(20) primary key,
module_name varchar(40),
module_duration int
);

create table associates_info
(
associate_id varchar(20) primary key,
salutation varchar(7),
associate_name varchar(30), 
associate_location varchar(30), 
associate_track varchar(15), 
associate_qualification varchar(200), 
associate_email varchar(100),
associate_password varchar(20)
);


create table question
(
question_id varchar(20) primary key,
module_id varchar(20),
constraint fk_module_id foreign key (module_id)
references modules_info(module_id),
question_text varchar(900)
);

create table associates_status
(
associate_id varchar(20),
constraint fk_associate_id foreign key (associate_id)
references associates_info(associate_id),
module_id varchar(20),
constraint module_id
 foreign key (module_id)
 references modules_info(module_id),
start_date date,
end_date date,
afeedbackgiven varchar(20), 
tfeedbackgiven varchar(20),
batch_id varchar(20),
constraint fk_branch_id foreign key (batch_id)
references batchs_info(batch_id),
trainer_id varchar(20),
constraint fk_trainer_id foreign key (trainer_id)
references trainers_info(trainer_id)
);

create table trainers_feedback
(
trainer_id varchar(20),
constraint trainer_id foreign key (trainer_id)
references trainers_info(trainer_id),
question_id varchar(20),
constraint fk_question_id foreign key (question_id)
references question(question_id),
batch_id varchar(20),
constraint branch_id foreign key (batch_id)
references batchs_info(batch_id),
module_id varchar(20),
constraint foreign_key_module_id foreign key (module_id)
references modules_info(module_id),
trainer_rating int
);

create table associates_feedback
(
associate_id varchar(20),
constraint associate_id foreign key (associate_id)
references associates_info(associate_id),
question_id varchar(20),
constraint question_id foreign key (question_id)
references question(question_id),
module_id varchar(20),
constraint foreign_k_module_id foreign key (module_id)
references question(module_id),
associate_rating int
);