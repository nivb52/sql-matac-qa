CREATE TABLE Doctors (
doc_code INT PRIMARY KEY,
doc_last_name VARCHAR(255) NOT NULL,
doc_first_name  VARCHAR(255) NOT NULL,
doc_phone_num VARCHAR(15) NOT NULL,
doc_city VARCHAR(50) NOT NULL,
doc_salary INT NOT NULL,
d_Special_code INT NOT NULL,
  FOREIGN KEY (d_Special_code) REFERENCES SpecialityType (Special_code)
);


CREATE TABLE Patients (
Patient_ID INT PRIMARY KEY,
P_last_name VARCHAR(255) NOT NULL,
p_first_name VARCHAR(255) NOT NULL,
p_gender VARCHAR(5) NOT NULL,
p_phone_num VARCHAR(15) NOT NULL,
p_city VARCHAR(50) NOT NULL,
);


CREATE TABLE Treatments (
doctor_code INT NOT NULL,
patient _id INT NOT NULL,
meet_date DATE NOT NULL,
meet_code INT NOT NULL,
-- CREATE INDEX FROM MEET_DATE AND DOCTOR_CODE AND PATIENT_ID
PRIMARY KEY (doctor_code, patient_id, meet_date),
  FOREIGN KEY (doctor_code) REFERENCES Doctors (doc_code),
  FOREIGN KEY (patient) REFERENCES Patients (Patient_ID),
  FOREIGN KEY (meet_code) REFERENCES MeetType (meet_code)
);


CREATE TABLE SpecialityType (
Special_code INT PRIMARY KEY,
Special_name VARCHAR(255) NOT NULL,
Special_area VARCHAR(255) NOT NULL,
);

CREATE TABLE MeetType (
meet_code INT PRIMARY KEY,
description VARCHAR(255) NOT NULL,
);





