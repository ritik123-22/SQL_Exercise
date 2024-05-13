Update [Admissions] Set attending_doctor_id = 29 where attending_doctor_id = 3;
Update [Admissions] Set patient_id = 4 where patient_id = 35;
SELECT DISTINCT Doctor_ID, first_Name
FROM Doctors
JOIN Admissions ON Doctors.Doctor_ID = Admissions.attending_Doctor_ID;

Update [Admissions] Set attending_doctor_id = 29 where attending_doctor_id = 3;
Update [Admissions] Set patient_id = 4 where patient_id = 35;
SELECT Doctor_ID,first_Name
FROM Doctors
WHERE Doctor_ID NOT IN (SELECT attending_Doctor_ID FROM Admissions);


Update [Admissions] Set attending_doctor_id = 29 where attending_doctor_id = 3;
Update [Admissions] Set patient_id = 4 where patient_id = 35;
SELECT DISTINCT Patients.Patient_ID, Patients.first_Name
FROM Patients
LEFT JOIN Admissions ON Patients.Patient_ID = Admissions.Patient_ID
WHERE Admissions.attending_Doctor_ID IS NULL;