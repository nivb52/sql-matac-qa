-- Seed data for Doctors table
INSERT INTO Doctors (doc_code, doc_last_name, doc_first_name, doc_phone_num, doc_city, doc_salary, d_Special_code)
VALUES
  (1, 'Levi', 'Avraham', '1234567890', 'Tel Aviv', 5000.00, 1),
  (2, 'Cohen', 'Michal', '9876543210', 'Jerusalem', 6000.00, 2),
  (3, 'Katz', 'Noa', '5555555555', 'Haifa', 4500.00, 1),
  (4, 'Ben-David', 'Eli', '4444444444', 'Rishon LeZion', 5500.00, 2),
  (5, 'Levy', 'Maya', '9999999999', 'Netanya', 5200.00, 1),
  (6, 'Cohen', 'Daniel', '7777777777', 'Ashdod', 4800.00, 2),
  (7, 'Levi', 'Yael', '2222222222', 'Petah Tikva', 5500.00, 1),
  (8, 'Katz', 'Adam', '6666666666', 'Beersheba', 5900.00, 2),
  (9, 'Ben-David', 'Tal', '8888888888', 'Holon', 5200.00, 1),
  (10, 'Levy', 'Maya', '5555555555', 'Eilat', 4900.00, 2);

-- Seed data for Patients table
INSERT INTO Patients (Patient_ID, p_last_name, p_first_name, p_gender, p_phone_num, p_city)
VALUES
  (1, 'Cohen', 'Noam', 'F', '1111111111', 'Tel Aviv'),
  (2, 'Levi', 'Ella', 'M', '2222222222', 'Jerusalem'),
  (3, 'Ben-David', 'Lior', 'F', '3333333333', 'Haifa'),
  (4, 'Katz', 'Yosef', 'M', '4444444444', 'Rishon LeZion'),
  (5, 'Cohen', 'Shira', 'F', '5555555555', 'Netanya'),
  (6, 'Levi', 'Yoni', 'M', '6666666666', 'Ashdod'),
  (7, 'Ben-David', 'Adi', 'F', '7777777777', 'Petah Tikva'),
  (8, 'Katz', 'Avigail', 'F', '8888888888', 'Beersheba'),
  (9, 'Cohen', 'Eitan', 'M', '9999999999', 'Holon'),
  (10, 'Levi', 'Noa', 'F', '1234567890', 'Eilat');


-- Seed data for Treatments table
INSERT INTO Treatments (doctor_code, patient, meet_date, meet_code)
VALUES
  (1, 1, '2023-06-01', 1),
  (2, 2, '2023-06-02', 2),
  (3, 3, '2023-06-03', 1),
  (4, 4, '2023-06-04', 2),
  (5, 5, '2023-06-05', 1),
  (6, 6, '2023-06-06', 2),
  (7, 7, '2023-06-07', 1),
  (8, 8, '2023-06-08', 2),
  (9, 9, '2023-06-09', 1),
  (10, 10, '2023-06-10', 2);

-- Seed data for SpecialityType table
INSERT INTO SpecialityType (Special_code, Special_name, Special_area)
VALUES
  (1, 'Cardiology', 'Sheba Medical Center'),
  (2, 'Dermatology', 'Ichilov Hospital'),
  (3, 'Orthopedics', 'Assuta Medical Center'),
  (4, 'Ophthalmology', 'Rambam Health Care Campus'),
  (5, 'Pediatrics', 'Hadassah Medical Center'),
  (6, 'Neurology', 'Sourasky Medical Center'),
  (7, 'Gastroenterology', 'Shaare Zedek Medical Center'),
  (8, 'Endocrinology', 'Wolfson Medical Center'),
  (9, 'Urology', 'Soroka Medical Center'),
  (10, 'Psychiatry', 'Abarbanel Mental Health Center');


-- Seed data for MeetType table
INSERT INTO MeetType (meet_code, description)
VALUES
  (1, 'Regular checkup'),
  (2, 'Follow-up visit'),
  (3, 'Initial consultation'),
  (4, 'Surgery follow-up'),
  (5, 'Emergency visit'),
  (6, 'Telephone appointment'),
;
