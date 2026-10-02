-- CREATE TABLES

USE hospital_analytics;

-- Remove old tables if they already exist
DROP TABLE IF EXISTS staff_schedule;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS services_weekly;
DROP TABLE IF EXISTS patients;


-- PATIENTS TABLE

CREATE TABLE patients (
    patient_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(150),
    age INT,
    arrival_date DATE,
    departure_date DATE,
    service VARCHAR(100),
    satisfaction DECIMAL(5,2),
    length_of_stay DECIMAL(8,2)
);

-- SERVICES WEEKLY TABLE

CREATE TABLE services_weekly (
    week INT,
    month VARCHAR(30),
    service VARCHAR(100),
    available_beds INT,
    patients_request INT,
    patients_admitted INT,
    patients_refused INT,
    patient_satisfaction DECIMAL(5,2),
    staff_morale DECIMAL(5,2),
    event VARCHAR(255)
);

-- STAFF TABLE

CREATE TABLE staff (
    staff_id VARCHAR(50) PRIMARY KEY,
    staff_name VARCHAR(150),
    role VARCHAR(100),
    service VARCHAR(100)
);

-- STAFF SCHEDULE TABLE

CREATE TABLE staff_schedule (
    week INT,
    staff_id VARCHAR(50),
    staff_name VARCHAR(150),
    role VARCHAR(100),
    service VARCHAR(100),
    present TINYINT
);

-- VERIFY TABLES

SHOW TABLES;