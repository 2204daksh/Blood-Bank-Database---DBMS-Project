# Relational Schema for Blood Bank Management System

This document provides a comprehensive overview of the database schema for the Blood Bank Management System, detailing each table along with their primary keys and foreign keys. This document is essential for understanding the structure and relationships within the database.
## Blood Bank Table

The `blood_bank` table stores information about blood banks.

```sql
CREATE TABLE blood_bank (
    state VARCHAR(10),
    city VARCHAR(10),
    blood_bank_id VARCHAR(10) PRIMARY KEY
); 
```
Primary Key: blood_bank_id
## Donor Table

The `donor` table stores information about donors.

```sql
CREATE TABLE donor (
    donor_name VARCHAR(20),
    donor_id VARCHAR(10) PRIMARY KEY,
    gender VARCHAR(10),
    blood_group VARCHAR(10),
    date_of_birth DATE,
    donation_date_time TIMESTAMP,
    city VARCHAR(10),
    phone_number VARCHAR(10),
    blood_bank_id VARCHAR(10),
    FOREIGN KEY (blood_bank_id) REFERENCES blood_bank(blood_bank_id)
);
```
Primary Key: donor_id  
Foreign Key: blood_bank_id references blood_bank(blood_bank_id)
## Blood Table

The `blood` table stores information about blood donations.

```sql
CREATE TABLE blood (
    blood_group VARCHAR(10),
    quantity_mL INTEGER,
    donor_id VARCHAR(10),
    PRIMARY KEY (donor_id, blood_group, quantity_mL),
    FOREIGN KEY (donor_id) REFERENCES donor(donor_id)
);
```
Primary Key: (donor_id, blood_group, quantity_mL)  
Foreign Key: donor_id references donor(donor_id)


## Employee Table

The `Employee` table stores information about employees working at blood banks.

```sql
CREATE TABLE Employee (
    Employee_id INT PRIMARY KEY,
    E_mail VARCHAR(30),
    Phone_no INT,
    Employee_Name VARCHAR(30),
    Salary INT,
    Joining_date DATE,
    blood_bank_id VARCHAR(10),
    FOREIGN KEY (blood_bank_id) REFERENCES blood_bank(blood_bank_id)
);
```
Primary Key: Employee_id  
Foreign Key: blood_bank_id references blood_bank(blood_bank_id)
## Employee_Phone Table

The `Employee_Phone` table stores multiple phone numbers for employees.

```sql
CREATE TABLE Employee_Phone (
    Phone_No VARCHAR(11),
    employee_id INT,
    PRIMARY KEY (Phone_No, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(Employee_id)
);
```
Primary Key: (Phone_No, employee_id)  
Foreign Key: employee_id references Employee(Employee_id))
## Hospital Table
The `hospital` table stores information about hospitals.

```sql
Copy code
CREATE TABLE hospital (
    hospital_id INT PRIMARY KEY,
    hospital_name VARCHAR(30),
    street VARCHAR(20),
    city VARCHAR(40)
);
```
Primary Key: hospital_id

## Patient Table
The `Patient table` stores information about patients.

```sql
Copy code
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    Patient_Name VARCHAR(30),
    Date_of_birth DATE,
    blood_group VARCHAR(5),
    Gender VARCHAR(5),
    house_no INT,
    Street VARCHAR(30),
    city VARCHAR(30),
    State VARCHAR(30),
    quantity INT,
    date_of_receiving DATE,
    blood_bank_id VARCHAR(10),
    admission_time TIMESTAMP,
    discharge_time TIMESTAMP,
    hospital_id INT,
    FOREIGN KEY (blood_bank_id) REFERENCES blood_bank(blood_bank_id),
    FOREIGN KEY (hospital_id) REFERENCES hospital(hospital_id)
);
```
Primary Key: patient_id  
Foreign Key: blood_bank_id references blood_bank(blood_bank_id), hospital_id references hospital(hospital_id)

## Volunteer Table
The `Volunteer` table stores information about volunteers.

```sql
Copy code
CREATE TABLE Volunteer (
    Volunteer_id INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Joindate DATE NOT NULL,
    Enddate DATE,
    Email VARCHAR(100) NOT NULL,
    blood_bank_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (blood_bank_id) REFERENCES blood_bank(blood_bank_id)
);
```
Primary Key: Volunteer_id  
Foreign Key: blood_bank_id references blood_bank(blood_bank_id)

## Volunteer_Phone Table
The `Volunteer_Phone` table stores phone numbers for volunteers.

```sql
Copy code
CREATE TABLE Volunteer_Phone (
    Phone_no_1 VARCHAR(11),
    Phone_no_2 VARCHAR(11),
    Volunteer_id INT,
    PRIMARY KEY (Volunteer_id, Phone_no_1),
    FOREIGN KEY (Volunteer_id) REFERENCES Volunteer(Volunteer_id)
);
```
Primary Key: (Volunteer_id, Phone_no_1)  
Foreign Key: Volunteer_id references Volunteer(Volunteer_id)

## Medical_Equipment Table
The equipment table stores information about medical equipment used in blood banks.

```sql
Copy code
CREATE TABLE equipment (
    Remarks VARCHAR(10),
    Date_of_purchase DATE,
    Maintainance_due VARCHAR(10),
    equipment_id VARCHAR(4) PRIMARY KEY,
    blood_bank_id VARCHAR(10),
    eqpmnt_name VARCHAR(40),
    price INTEGER,
    FOREIGN KEY (blood_bank_id) REFERENCES blood_bank(blood_bank_id)
);
```
Primary Key: equipment_id  
Foreign Key: blood_bank_id references blood_bank(blood_bank_id)
