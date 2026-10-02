-- 03 - LOAD CLEANED DATA

USE hospital_analytics;

-- LOAD PATIENTS

LOAD DATA LOCAL INFILE
'C:/Users/khala/Project/Hospital-Patient-Analytics/data/processed/patients_cleaned.csv'

INTO TABLE patients

FIELDS TERMINATED BY ','
ENCLOSED BY '"'

LINES TERMINATED BY '\n'

IGNORE 1 ROWS

(
    patient_id,
    name,
    age,
    arrival_date,
    departure_date,
    service,
    satisfaction,
    length_of_stay
);

-- LOAD SERVICES WEEKLY

LOAD DATA LOCAL INFILE
'C:/Users/khala/Project/Hospital-Patient-Analytics/data/processed/services_weekly_cleaned.csv'

INTO TABLE services_weekly

FIELDS TERMINATED BY ','
ENCLOSED BY '"'

LINES TERMINATED BY '\n'

IGNORE 1 ROWS

(
    week,
    month,
    service,
    available_beds,
    patients_request,
    patients_admitted,
    patients_refused,
    patient_satisfaction,
    staff_morale,
    event
);

-- LOAD STAFF

LOAD DATA LOCAL INFILE
'C:/Users/khala/Project/Hospital-Patient-Analytics/data/processed/staff_cleaned.csv'

INTO TABLE staff

FIELDS TERMINATED BY ','
ENCLOSED BY '"'

LINES TERMINATED BY '\n'

IGNORE 1 ROWS

(
    staff_id,
    staff_name,
    role,
    service
);

-- LOAD STAFF SCHEDULE

LOAD DATA LOCAL INFILE
'C:/Users/khala/Project/Hospital-Patient-Analytics/data/processed/staff_schedule_cleaned.csv'

INTO TABLE staff_schedule

FIELDS TERMINATED BY ','
ENCLOSED BY '"'

LINES TERMINATED BY '\n'

IGNORE 1 ROWS

(
    week,
    staff_id,
    staff_name,
    role,
    service,
    present
);

-- CHECK RECORD COUNTS

SELECT 'patients' AS table_name, COUNT(*) AS records
FROM patients

UNION ALL

SELECT 'services_weekly', COUNT(*)
FROM services_weekly

UNION ALL

SELECT 'staff', COUNT(*)
FROM staff

UNION ALL

SELECT 'staff_schedule', COUNT(*)
FROM staff_schedule;