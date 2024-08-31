-- blood_bank
INSERT INTO blood_bank (state, city, blood_bank_id) VALUES
('Rajasthan', 'Jaipur', 'j1'),
('Rajasthan', 'Udaipur', 'u1'),
('Rajasthan', 'Jodhpur', 'j2'),
('Rajasthan', 'Kota', 'k1'),
('Rajasthan', 'Ajmer', 'a1'),
('Rajasthan', 'Bikaner', 'b1');
-- donor
INSERT INTO donor (donor_name, donor_id, gender, blood_group, date_of_birth, donation_date_time, city, phone_number, blood_bank_id) VALUES
('Arjun', 'd101', 'M', 'B+', '1990-11-12', '2023-03-10 00:02:23', 'Jaipur', '9812345678', 'j1'),
('Priya', 'd102', 'F', 'B-', '1992-10-12', '2023-03-10 00:03:23', 'Udaipur', '9823456789', 'u1'),
('Ravi', 'd103', 'M', 'AB-', '1985-09-12', '2023-02-10 00:04:12', 'Jodhpur', '9876543210', 'j2'),
('Nisha', 'd104', 'F', 'A+', '1988-11-22', '2023-02-10 11:01:23', 'Kota', '9876543201', 'k1'),
('Vikram', 'd105', 'M', 'O-', '1989-01-12', '2023-01-10 00:05:23', 'Ajmer', '9123456789', 'a1'),
('Sneha', 'd106', 'F', 'AB+', '1995-11-12', '2023-04-10 05:01:23', 'Bikaner', '9234567890', 'b1'),
('Amit', 'd107', 'M', 'A+', '1992-11-14', '2023-01-10 15:01:23', 'Jaipur', '9345678901', 'j1'),
('Kavita', 'd108', 'F', 'B+', '1987-10-12', '2023-02-10 12:01:23', 'Bikaner', '9456789012', 'b1'),
('Rohit', 'd109', 'M', 'O+', '1990-11-12', '2023-03-10 23:01:23', 'Udaipur', '9567890123', 'u1');
-- blood
INSERT INTO blood (blood_group, quantity_mL, donor_id) VALUES
('B+', 500, 'd101'),
('B-', 350, 'd102'),
('AB-', 260, 'd103'),
('A+', 750, 'd104'),
('O-', 400, 'd105'),
('AB+', 325, 'd106'),
('A+', 230, 'd107'),
('B+', 1000, 'd108'),
('O+', 450, 'd109');
-- Employee
INSERT INTO Employee (Employee_id, E_mail, Phone_no, Employee_Name, Salary, Joining_date, blood_bank_id) VALUES
(2001, 'rahul@gmail.com', 9375938, 'Rahul', 50000, '2022-08-23', 'j1'),
(2002, 'ramesh@gmail.com', 9938788, 'Ramesh', 40000, '2021-07-23', 'j2'),
(2003, 'sultan@gmail.com', 9423955, 'Sultan', 48000, '2021-08-13', 'u1'),
(2004, 'mani@gmail.com', 9123224, 'Mani', 79000, '2022-08-23', 'k1'),
(2005, 'mayank@gmail.com', 9324423, 'Mayank', 56000, '2020-08-23', 'a1'),
(2006, 'harshit@gmail.com', 9987732, 'Harshit', 44000, '2022-08-17', 'a1'),
(2007, 'ravi@gmail.com', 9123224, 'Ravi', 23000, '2021-08-23', 'j1'),
(2008, 'vanshi@gmail.com', 9098087, 'Vanshika', 100000, '2020-05-10', 'k1');
-- Employee_Phone
INSERT INTO Employee_Phone (Phone_No, employee_id) VALUES
('9375938', 2001),
('9587497', 2001),
('9938788', 2002),
('9656644', 2002),
('9423955', 2003),
('9987732', 2003),
('9123224', 2004),
('9098087', 2004),
('9324423', 2005),
('9587497', 2005),
('9987732', 2006),
('9423955', 2006),
('9123224', 2007),
('9098087', 2008);
-- hospital
INSERT INTO hospital (hospital_id, hospital_name, street, city) VALUES
(101, 'Shanti Hospital', 'Ramnagar', 'Jaipur'),
(102, 'Sarvottam Care', 'APJColony', 'Udaipur'),
(103, 'Aarogya Hospital', 'GandhiNagar', 'Jodhpur'),
(104, 'Kailash Hospital', 'Hanamkonda1', 'Kota'),
(105, 'Nirmal Jyoti', 'Hanamkonda2', 'Ajmer'),
(106, 'Swasti Blood Bank', 'KakatiyaColony', 'Bikaner');
-- Patient
INSERT INTO Patient (patient_id, Patient_Name, Date_of_birth, blood_group, Gender, house_no, Street, city, State, quantity, date_of_receiving, blood_bank_id, admission_time, discharge_time, hospital_id) VALUES
(1, 'Prakash', '1984-06-21', 'O+', 'M', 4, 'st21', 'Jaipur', 'Rajasthan', 500, '2016-07-14', 'j1', '2016-07-14 18:30:00', NULL, 101),
(2, 'Kavita', '1981-07-13', 'AB+', 'F', 12, '14avenue', 'Jaipur', 'Rajasthan', 350, '2014-08-08', 'j1', '2014-08-08 10:12:00', '2014-08-11 14:50:00', 101),
(3, 'Anita', '1991-04-24', 'A+', 'F', 19, '19thSt', 'Udaipur', 'Rajasthan', 260, '2015-11-19', 'u1', '2015-11-19 14:30:00', '2015-11-26 16:25:00', 102),
(4, 'Rajesh', '1968-11-09', 'B+', 'M', 6, '18thSt', 'Udaipur', 'Rajasthan', 750, '2016-07-16', 'u1', '2016-07-16 19:44:00', NULL, 102),
(5, 'Meera', '1994-12-16', 'A+', 'F', 10, 'Ramnagar', 'Kota', 'Rajasthan', 400, '2015-09-11', 'k1', '2015-09-11 11:16:00', '2015-09-22', 104),
(6, 'Rakhi', '1978-09-13', 'AB-', 'F', 11, 'ShivNagar', 'Kota', 'Rajasthan', 325, '2016-07-15', 'k1', '2016-07-15 06:54:00', NULL, 104),
(7, 'Ravi', '1972-02-29', 'O+', 'M', 17, 'Karimnagar', 'Jodhpur', 'Rajasthan', 600, '2014-10-01', 'j2', '2014-10-01 11:45:00', '2014-10-09', 103),
(8, 'Rohit', '1995-03-06', 'AB+', 'M', 20, 'St06', 'Jodhpur', 'Rajasthan', 650, '2016-07-16', 'j2', '2016-07-16 17:13:00', NULL, 103),
(9, 'Amit', '1967-05-20', 'O-', 'M', 15, 'VinodNagar', 'Ajmer', 'Rajasthan', 300, '2017-08-30', 'a1', '2017-08-30 13:30:00', '2017-09-02 14:30:00', 105);
-- Volunteer
INSERT INTO Volunteer (Volunteer_id, Name, Joindate, Enddate, Email, blood_bank_id) VALUES
(1, 'Amit', '2023-02-10', NULL, 'amit@example.com', 'j1'),
(2, 'Ravi', '2023-03-15', '2024-03-15', 'ravi@example.com', 'u1'),
(3, 'Sneha', '2023-01-20', NULL, 'sneha@example.com', 'k1'),
(4, 'Nisha', '2023-04-10', NULL, 'nisha@example.com', 'a1'),
(5, 'Kavita', '2023-05-10', '2024-05-10', 'kavita@example.com', 'b1');
-- Volunteer_Phone_no
INSERT INTO Volunteer_Phone_no (Phone_no_1, Phone_no_2, Volunteer_id) VALUES
('9876543210', '9988776655', 1),
('9988776655', '9876543210', 2),
('9123456789', '9323456789', 3),
('9876543210', '9988776655', 4),
('9933445566', '9922445566', 5);
-- equipment
INSERT INTO equipment (Remarks, Date_of_purchase, Maintainance_due, equipment_id, blood_bank_id, eqpmnt_name, price) VALUES
('New', '2024-01-10', '2025-01-10', 'e001', 'j1', 'Blood Analyzer', 50000),
('Used', '2023-06-20', '2024-06-20', 'e002', 'u1', 'Blood Bank Refrigerator', 25000),
('New', '2024-02-14', '2025-02-14', 'e003', 'k1', 'Blood Bag Sealing Machine', 30000),
('New', '2023-12-01', '2024-12-01', 'e004', 'a1', 'Blood Collection Kit', 15000),
('Used', '2024-04-01', '2025-04-01', 'e005', 'b1', 'Blood Centrifuge', 20000);blood
