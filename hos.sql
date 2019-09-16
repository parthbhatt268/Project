drop table Room;
drop table Patient;
drop table Employee;
drop table Test;
drop table Hospital;

create table Hospital(
h_id numeric(10) primary key,
h_name varchar(35) not null,
h_location varchar(40) not null,
h_city varchar(40) not null);


create table Test(
t_id numeric(10) primary key,
t_name varchar(50) not null,
t_type varchar(5) not null,
t_dur varchar(5) not null,
Index (h_id),
h_id numeric(10),
Constraint fk_Test_h foreign key(h_id) References Hospital(h_id));


create table Employee(
e_id numeric(8) primary key,
e_name varchar(30) not null,
e_ph varchar(15) not null,
e_add varchar(50) not null,
e_hours varchar(10) not null,
index(h_id),
h_id numeric(10),
constraint fk_emp_Hospital foreign key(h_id) references Hospital(h_id));



create table Patient( 
p_id numeric(10) primary key,
p_bill varchar(10),
p_date numeric(10),
index(t_id),
t_id numeric(10),
constraint fk_patient_test foreign key(t_id) references Test(t_id));


create table Room(
r_no numeric(10) primary key,
r_type varchar(30) not null,
index(p_id),
p_id numeric(10),
constraint fk_pateint_Room foreign key(p_id) references Patient(p_id));


