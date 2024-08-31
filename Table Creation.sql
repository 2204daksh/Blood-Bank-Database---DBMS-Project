Create Database project;
use project;

-- Table Creation 
-- Blood_Bank Table
create table blood_bank(
state varchar(10),
city varchar(10),
blood_bank_id varchar(10) primary key
);
-- Donor Table 
create table donor (
donor_name varchar(20),
donor_id varchar(10) primary key,
gender varchar(10),
blood_group varchar(10),
date_of_birth date,
donation_date_time timestamp,
city varchar(10),
phone_number varchar(10),
blood_bank_id varchar(10),
foreign key(blood_bank_id) references blood_bank(blood_bank_id)
);

-- Blood Table
create table blood (
blood_group varchar(10),
quantity_mL integer,
donor_id varchar(10),
primary key(donor_id,blood_group,quantity_mL),
foreign key(donor_id) references donor(donor_id)
);

-- Employemployeee Table
create table Employee (
Employee_id int primary key,
E_mail varchar(30),
Phone_no int,
Employee_Name varchar(30),
Salary int,
Joining_date date,
blood_bank_id varchar(10),
foreign key (blood_bank_id) references blood_bank(blood_bank_id)
);

-- Employee_Phone_Phone Table
create table Employee_Phone(
Phone_No varchar(11),
employee_id int,
primary key(Phone_no,Employee_id),
foreign key(employee_id) references Employee(employee_id)
);

-- Hospital Table
create table hospital
(
hospital_id int primary key,
hospital_name varchar(30),
street varchar(20),
city varchar(40)
);

-- Patient Table
create table Patient
(
patient_id int primary key,
Patient_Name varchar(30),
Date_of_birth date,
blood_group varchar(5),
Gender varchar(5),
house_no int,
Street varchar(30),
city varchar (30),
State varchar(30),
quantity int,
date_of_receiving date,
blood_bank_id varchar(10),
admission_time timestamp,
discharge_time timestamp,
hospital_id int, foreign key (blood_bank_id) references Blood_bank(blood_bank_id),
foreign key(hospital_id) references hospital(hospital_id)
);

-- Volunteer Table
create table Volunteer (
Volunteer_id int primary key,
Name varchar(50) not null,
Joindate date not null,
Enddate date,  
Email varchar(100) not null,
blood_bank_id varchar(10) not null,
foreign key(blood_bank_id) references blood_bank(blood_bank_id)
);

-- Volunteer_PhonePhone Table
create table Volunteer_Phone_no(
Phone_no_1 varchar(11),
Phone_no_2 varchar(11),
Volunteer_id int,
primary key(Volunteer_id,Phone_no_1),
foreign key (Volunteer_id) references Volunteer(Volunteer_id)
);

-- Medical_Equipment_Equipment Table
create table equipment(
Remarks varchar(10),
Date_of_purchase date,
Maintainance_due varchar(10),
equipment_id varchar(4) primary key,
blood_bank_id varchar(10),
eqpmnt_name varchar(40),
price integer,
foreign key(blood_bank_id) references blood_bank(blood_bank_id)
);

DESC equipment;

