# SQL_Exercise
To solve the SQL queries in the given test, we need to first understand the schema of the tables involved.
We are given two UPDATE queries to execute before the SELECT queries:
--->Update [Admissions] Set attending_doctor_id = 29 where attending_doctor_id = 3;
--->Update [Admissions] Set patient_id = 4 where patient_id = 35;
These queries will update the attending_doctor_id and patient_id columns in the admissions table for certain records.

Now, let's solve the SQL queries:
1.
SELECT the details of Doctors(s) who has got Admissions:
--->To get the details of doctors who have admissions, we can join the doctors and admissions tables on the doctor_id column and filter for records where the attending_doctor_id is not null.
2.
SELECT the details of Doctors(s) for whom there is no Admissions:
--->To get the details of doctors who do not have any admissions, we can use a subquery to first get all the doctor_id values in the admissions table and then filter for doctor_id values that are not in that list. Here's an example query:
3.
SELECT the details of Patients(s) whose Admission can’t be completed due to missing doctor details:
--->To get the details of patients whose admission cannot be completed due to missing doctor details, we can filter for records in the admissions table where the attending_doctor_id is null. 
