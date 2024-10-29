# SQL Queries for Blood Bank Database
## Query 1: Find all donors from a specific city
```sql
SELECT donor_name, blood_group, donation_date_time
FROM donor
WHERE city = 'Jaipur';
```
This query retrieves all donors who are from the city of Jaipur, including their blood group and donation date.

## Query 2: List all volunteers working in a specific blood bank
```sql
SELECT Name, Email, Joindate, Enddate
FROM Volunteer
WHERE blood_bank_id = 'j1';
```
This query lists all volunteers working at the blood bank with ID 'j1' (located in Jaipur), including their joining and ending dates.

## Query 3: Get the total amount of each blood group available in a specific blood bank
```sql
SELECT blood.blood_group, SUM(quantity_mL) AS total_quantity
FROM blood
JOIN donor ON blood.donor_id = donor.donor_id
WHERE blood_bank_id = 'u1'
GROUP BY blood_group;
```
This query fetches the total quantity of each blood group available in the blood bank with ID 'u1' (located in Udaipur).

## Query 4: Retrieve the details of patients who received blood from a specific blood bank
```sql
SELECT Patient_Name, blood_group, quantity, date_of_receiving, hospital_name
FROM Patient
JOIN hospital ON Patient.hospital_id = hospital.hospital_id
WHERE blood_bank_id = 'k1';
```
This query retrieves the details of all patients who received blood from the blood bank with ID 'k1' (located in Kota), along with the name of the hospital where they were treated.

## Query 5: List all equipment purchased after a certain date for a specific blood bank
```sql
SELECT eqpmnt_name, Date_of_purchase, Maintainance_due, price
FROM equipment
WHERE blood_bank_id = 'b1' AND Date_of_purchase > '2024-01-01';
```
This query lists all equipment purchased after January 1, 2024, for the blood bank with ID 'b1' (located in Bikaner).

## Query 6: Show the phone numbers of all employees in a specific blood bank
```sql
SELECT Employee_Name, Employee.Phone_No
FROM Employee
JOIN Employee_Phone ON Employee.Employee_id = Employee_Phone.employee_id
WHERE blood_bank_id = 'j1';
```
This query displays the names and phone numbers of all employees working at the blood bank with ID 'j1' (located in Jaipur).

## Query 7: Find the blood donation details of a donor
```sql
SELECT donor_name, donor.blood_group, quantity_mL, donation_date_time
FROM donor
JOIN blood ON donor.donor_id = blood.donor_id
WHERE donor_name = 'Rohit';
```
This query finds the blood donation details of a donor named Rohit, including the quantity donated and the donation date.

These queries can help in managing and analyzing data within the blood bank database effectively.
