USE hospital_analytics;

-- 1. Hospital KPI Summary
SELECT
    COUNT(*) AS total_patients,
    ROUND(AVG(age), 2) AS average_age,
    ROUND(AVG(length_of_stay), 2) AS average_length_of_stay,
    ROUND(AVG(satisfaction), 2) AS average_satisfaction
FROM patients;


-- 2. Patients by Service
SELECT
    service,
    COUNT(*) AS total_patients
FROM patients
GROUP BY service
ORDER BY total_patients DESC;


-- 3. Age Group Distribution
SELECT
    CASE
        WHEN age < 18 THEN 'Below 18'
        WHEN age BETWEEN 18 AND 30 THEN '18-30'
        WHEN age BETWEEN 31 AND 45 THEN '31-45'
        WHEN age BETWEEN 46 AND 60 THEN '46-60'
        ELSE 'Above 60'
    END AS age_group,
    COUNT(*) AS patient_count
FROM patients
GROUP BY age_group
ORDER BY patient_count DESC;


-- 4. Average Length of Stay by Service
SELECT
    service,
    COUNT(*) AS patients,
    ROUND(AVG(length_of_stay), 2) AS average_length_of_stay
FROM patients
GROUP BY service
ORDER BY average_length_of_stay DESC;


-- 5. Patient Satisfaction by Service
SELECT
    service,
    COUNT(*) AS patients,
    ROUND(AVG(satisfaction), 2) AS average_satisfaction
FROM patients
GROUP BY service
ORDER BY average_satisfaction DESC;


-- 6. Monthly Admissions
SELECT
    YEAR(arrival_date) AS admission_year,
    MONTH(arrival_date) AS admission_month,
    COUNT(*) AS admissions
FROM patients
GROUP BY
    YEAR(arrival_date),
    MONTH(arrival_date)
ORDER BY
    admission_year,
    admission_month;


-- 7. Service-wise Admission Rate
SELECT
    service,
    SUM(patients_admitted) AS total_admitted,
    SUM(patients_request) AS total_requests,
    ROUND(
        SUM(patients_admitted) * 100.0 /
        NULLIF(SUM(patients_request), 0),
        2
    ) AS admission_rate_percentage
FROM services_weekly
GROUP BY service
ORDER BY admission_rate_percentage DESC;


-- 8. Service-wise Refusal Rate
SELECT
    service,
    SUM(patients_refused) AS total_refused,
    SUM(patients_request) AS total_requests,
    ROUND(
        SUM(patients_refused) * 100.0 /
        NULLIF(SUM(patients_request), 0),
        2
    ) AS refusal_rate_percentage
FROM services_weekly
GROUP BY service
ORDER BY refusal_rate_percentage DESC;


-- 9. Bed Availability by Service
SELECT
    service,
    ROUND(AVG(available_beds), 2) AS average_available_beds,
    MIN(available_beds) AS minimum_beds,
    MAX(available_beds) AS maximum_beds
FROM services_weekly
GROUP BY service
ORDER BY average_available_beds DESC;


-- 10. Weekly Admission Trend
SELECT
    week,
    SUM(patients_admitted) AS total_admitted
FROM services_weekly
GROUP BY week
ORDER BY week;


-- 11. Staff by Service
SELECT
    service,
    COUNT(*) AS staff_count
FROM staff
GROUP BY service
ORDER BY staff_count DESC;


-- 12. Staff by Role
SELECT
    role,
    COUNT(*) AS staff_count
FROM staff
GROUP BY role
ORDER BY staff_count DESC;


-- 13. Staff Attendance by Service
SELECT
    service,
    COUNT(*) AS total_schedule_records,
    SUM(present) AS total_present,
    ROUND(
        SUM(present) * 100.0 /
        NULLIF(COUNT(*), 0),
        2
    ) AS attendance_percentage
FROM staff_schedule
GROUP BY service
ORDER BY attendance_percentage DESC;


-- 14. Staff Morale by Service
SELECT
    service,
    ROUND(AVG(staff_morale), 2) AS average_staff_morale
FROM services_weekly
GROUP BY service
ORDER BY average_staff_morale DESC;


-- 15. Top 10 Longest Patient Stays
SELECT
    patient_id,
    name,
    age,
    service,
    arrival_date,
    departure_date,
    length_of_stay,
    satisfaction
FROM patients
ORDER BY length_of_stay DESC
LIMIT 10;


-- 16. Final Hospital KPI
SELECT
    COUNT(*) AS total_patients,
    ROUND(AVG(age), 2) AS average_patient_age,
    ROUND(AVG(length_of_stay), 2) AS average_length_of_stay,
    ROUND(AVG(satisfaction), 2) AS average_patient_satisfaction,
    MIN(length_of_stay) AS minimum_length_of_stay,
    MAX(length_of_stay) AS maximum_length_of_stay
FROM patients;