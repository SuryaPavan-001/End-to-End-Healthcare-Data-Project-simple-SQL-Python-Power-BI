create database HealthcareDB;
use HealthcareDB;

Create table Patients(
patient_id int auto_increment primary key,
name varchar(30),
age int ,
gender varchar(10),
city varchar(50));


create table Doctor(
doctor_id int auto_increment primary key,
name varchar(30),
specialization varchar(30),
fee decimal(10,2)
);

create table Appointments(
appointments_id int auto_increment primary key,
patient_id int,
doctor_id int,
appointment_date date,
status varchar(50),
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);


CREATE TABLE Diagnosis (
    diagnosis_id INT AUTO_INCREMENT PRIMARY KEY,
    appointments_id INT,
    diagnosis_name VARCHAR(100),
    prescribed_medicine VARCHAR(100),
    FOREIGN KEY (appointments_id) REFERENCES Appointments(appointments_id)
);


CREATE TABLE Billing (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    appointments_id INT,
    total_fee DECIMAL(10,2),
    payment_status VARCHAR(50),
    billing_date DATE,
    FOREIGN KEY (appointments_id) REFERENCES Appointments(appointments_id)
);