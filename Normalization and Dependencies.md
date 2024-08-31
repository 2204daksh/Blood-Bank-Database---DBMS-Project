# Normalization and Dependencies

Normalization is a database design technique that reduces data redundancy and ensures data integrity. This document outlines the normalization process for the Blood Bank Database, explaining how each table is normalized to the highest normal form (BCNF) and details the functional dependencies.

## 1. Blood Bank Table

### Attributes:
- blood_bank_id
- state
- city

### Normalization:
- **First Normal Form (1NF):** The table has atomic columns.
- **Second Normal Form (2NF):** The table has a primary key (blood_bank_id) and no partial dependencies.
- **Third Normal Form (3NF):** There are no transitive dependencies.
- **Boyce-Codd Normal Form (BCNF):** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {blood_bank_id → state, city}
### Result: 
The table is in BCNF because every attribute is functionally dependent on the primary key (blood_bank_id).

## 2. Donor Table

### Attributes:
- donor_id
- donor_name
- gender
- blood_group
- date_of_birth
- donation_date_time
- city
- phone_number
- blood_bank_id

### Normalization:
- **1NF:** The table has atomic columns.
- **2NF:** The table has a primary key (donor_id) and no partial dependencies.
- **3NF:** There are no transitive dependencies.
- **BCNF:** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {donor_id → donor_name, gender, blood_group, date_of_birth, city, phone_number, blood_bank_id}
### Result:
The table is in BCNF because every attribute is functionally dependent on the primary key (donor_id).

## 3. Blood Table

### Attributes:
- donor_id
- blood_group
- quantity_mL

### Normalization:
- **1NF:** The table has atomic columns.
- **2NF:** The table has a composite primary key (donor_id, blood_group, quantity_mL) and no partial dependencies.
- **3NF:** There are no transitive dependencies.
- **BCNF:** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {donor_id, blood_group, quantity_mL → blood_group, quantity_mL}
### Result:
The table is in BCNF because all attributes are functionally dependent on the composite primary key (donor_id, blood_group, quantity_mL).

## 4. Employee Table

### Attributes:
- employee_id
- e_mail
- phone_no
- employee_name
- salary
- joining_date
- blood_bank_id

### Normalization:
- **1NF:** The table has atomic columns.
- **2NF:** The table has a primary key (employee_id) and no partial dependencies.
- **3NF:** There are no transitive dependencies.
- **BCNF:** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {employee_id → e_mail, phone_no, employee_name, salary, joining_date, blood_bank_id}
### Result:
The table is in BCNF because every attribute is functionally dependent on the primary key (employee_id).

## 5. Employee Phone Table

### Attributes:
- phone_no
- employee_id

### Normalization:
- **1NF:** The table has atomic columns.
- **2NF:** The table has a composite primary key (phone_no, employee_id) and no partial dependencies.
- **3NF:** There are no transitive dependencies.
- **BCNF:** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {employee_id, phone_no → phone_no}
### Result:
The table is in BCNF because all attributes are functionally dependent on the composite primary key (phone_no, employee_id).

## 6. Hospital Table

### Attributes:
- hospital_id
- hospital_name
- street
- city

### Normalization:
- **1NF:** The table has atomic columns.
- **2NF:** The table has a primary key (hospital_id) and no partial dependencies.
- **3NF:** There are no transitive dependencies.
- **BCNF:** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {hospital_id → hospital_name, street, city}
### Result:
The table is in BCNF because every attribute is functionally dependent on the primary key (hospital_id).

## 7. Patient Table

### Attributes:
- patient_id
- patient_name
- date_of_birth
- blood_group
- gender
- house_no
- street
- city
- state
- quantity
- date_of_receiving
- admission_time
- discharge_time
- blood_bank_id
- hospital_id

### Normalization:
- **1NF:** The table has atomic columns.
- **2NF:** The table has a composite primary key (patient_id, hospital_id) and no partial dependencies.
- **3NF:** There are no transitive dependencies.
- **BCNF:** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {patient_id → patient_name, date_of_birth, blood_group, gender, house_no, street, city, state, quantity, blood_bank_id}
- **Functional Dependency:** {patient_id, hospital_id → date_of_receiving, admission_time, discharge_time}
### Result:
The table is in BCNF because all attributes are functionally dependent on the composite primary key (patient_id, hospital_id).

## 8. Volunteer Table

### Attributes:
- volunteer_id
- name
- joindate
- enddate
- email
- blood_bank_id

### Normalization:
- **1NF:** The table has atomic columns.
- **2NF:** The table has a primary key (volunteer_id) and no partial dependencies.
- **3NF:** There are no transitive dependencies.
- **BCNF:** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {volunteer_id → name, joindate, enddate, email, blood_bank_id}
### Result:
The table is in BCNF because every attribute is functionally dependent on the primary key (volunteer_id).

## 9. Volunteer Phone Table

### Attributes:
- phone_no_1
- phone_no_2
- volunteer_id

### Normalization:
- **1NF:** The table has atomic columns.
- **2NF:** The table has a composite primary key (phone_no_1, volunteer_id) and no partial dependencies.
- **3NF:** There are no transitive dependencies.
- **BCNF:** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {volunteer_id, phone_no_1, phone_no_2 → phone_no_1, phone_no_2}
### Result:
The table is in BCNF because all attributes are functionally dependent on the composite primary key (phone_no_1, volunteer_id).

## 10. Medical Equipment Table

### Attributes:
- equipment_id
- eqpmnt_name
- price
- remarks
- date_of_purchase
- maintainance_due
- blood_bank_id

### Normalization:
- **1NF:** The table has atomic columns.
- **2NF:** The table has a primary key (equipment_id) and no partial dependencies.
- **3NF:** There are no transitive dependencies.
- **BCNF:** Every determinant is a candidate key.

### Dependencies:
- **Functional Dependency:** {equipment_id → eqpmnt_name, price, remarks, date_of_purchase, maintainance_due, blood_bank_id}
### Result:
The table is in BCNF because every attribute is functionally dependent on the primary key (equipment_id).
