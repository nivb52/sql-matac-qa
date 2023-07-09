-- Create Doctors table
CREATE TABLE Doctors (
  doc_code INT PRIMARY KEY,
  doc_last_name VARCHAR(50),
  doc_first_name VARCHAR(50),
  doc_phone_num VARCHAR(20),
  doc_city VARCHAR(50),
  doc_salary DECIMAL(10, 2),
  d_Special_code INT,
  FOREIGN KEY (d_Special_code) REFERENCES SpecialityType (Special_code)
);

-- Create Patients table
CREATE TABLE Patients (
  Patient_ID INT PRIMARY KEY,
  p_last_name VARCHAR(50),
  p_first_name VARCHAR(50),
  p_gender CHAR(1),
  p_phone_num VARCHAR(20),
  p_city VARCHAR(50)
);

-- Create Treatments table
CREATE TABLE Treatments (
  doctor_code INT,
  patient INT,
  meet_date DATE,
  meet_code INT,
    PRIMARY KEY (doctor_code, Patient_ID, meet_date),
  FOREIGN KEY (doctor_code) REFERENCES Doctors (doc_code),
  FOREIGN KEY (patient) REFERENCES Patients (Patient_ID),
  FOREIGN KEY (meet_code) REFERENCES MeetType (meet_code)
);

-- Create SpecialityType table
CREATE TABLE SpecialityType (
  Special_code INT PRIMARY KEY,
  Special_name VARCHAR(50),
  Special_area VARCHAR(50)
);

-- Create MeetType table
CREATE TABLE MeetType (
  meet_code INT PRIMARY KEY,
  description VARCHAR(100)
);
