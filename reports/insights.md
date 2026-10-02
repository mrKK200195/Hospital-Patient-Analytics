# Hospital Patient Analytics — Key Insights

## Overview

This document summarizes the key findings generated during the analysis of the Hospital Patient Analytics dataset.

The analysis covers patient demographics, service utilization, admissions, patient satisfaction, bed availability, and workforce performance.

---

## 1. Overall Hospital KPIs

| KPI | Value |
|---|---:|
| Total Patients | 1,000 |
| Average Patient Age | 45.34 years |
| Average Length of Stay | 7.41 days |
| Average Patient Satisfaction | 79.60 |

The dataset contains 1,000 patient records with an average patient age of 45.34 years. The average length of stay is 7.41 days, while the overall average patient satisfaction score is 79.60.

---

## 2. Patient Distribution by Service

| Service | Patients |
|---|---:|
| Emergency | 263 |
| Surgery | 254 |
| General Medicine | 242 |
| ICU | 241 |

Patient volume is distributed across four hospital services. Emergency has 263 patients, followed by Surgery with 254, General Medicine with 242, and ICU with 241.

---

## 3. Patient Age Distribution

| Age Group | Patients |
|---|---:|
| Below 18 | 185 |
| 18–30 | 159 |
| 31–45 | 151 |
| 46–60 | 167 |
| Above 60 | 338 |

The **Above 60** age group contains the largest number of patients in the analyzed dataset, with 338 records.

---

## 4. Average Length of Stay by Service

| Service | Average Length of Stay |
|---|---:|
| Surgery | 7.87 days |
| ICU | 7.61 days |
| Emergency | 7.16 days |
| General Medicine | 7.00 days |

Average length of stay varies across hospital services, ranging from 7.00 to 7.87 days.

---

## 5. Patient Satisfaction by Service

| Service | Average Satisfaction |
|---|---:|
| Surgery | 80.31 |
| ICU | 79.92 |
| Emergency | 79.55 |
| General Medicine | 78.57 |

Patient satisfaction scores are relatively close across the four services, ranging from 78.57 to 80.31.

---

## 6. Monthly Admissions

The recorded monthly admissions for 2025 are:

| Month | Admissions |
|---|---:|
| January | 85 |
| February | 80 |
| March | 75 |
| April | 81 |
| May | 85 |
| June | 81 |
| July | 82 |
| August | 88 |
| September | 94 |
| October | 92 |
| November | 83 |
| December | 74 |

The monthly analysis shows variation in admission volume throughout the year. September records 94 admissions, while December records 74 admissions.

---

## 7. Admission Rate by Service

| Service | Admission Rate |
|---|---:|
| ICU | 82.13% |
| Surgery | 75.23% |
| General Medicine | 54.61% |
| Emergency | 19.13% |

Admission rate is calculated as:

```text
Admission Rate =
Patients Admitted / Patient Requests × 100
```

The rates show substantial differences in the proportion of patient requests resulting in admissions across services.

---

## 8. Refusal Rate by Service

| Service | Refusal Rate |
|---|---:|
| Emergency | 80.87% |
| General Medicine | 45.39% |
| Surgery | 24.77% |
| ICU | 17.87% |

Refusal rate is calculated as:

```text
Refusal Rate =
Patients Refused / Patient Requests × 100
```

The service-level refusal rates vary considerably across the analyzed dataset.

---

## 9. Average Available Beds

| Service | Average Available Beds |
|---|---:|
| General Medicine | 46.23 |
| Surgery | 37.52 |
| Emergency | 22.79 |
| ICU | 14.85 |

Average available bed counts differ across hospital services and provide a view of service-level capacity.

---

## 10. Workforce Distribution

### Staff by Service

| Service | Staff |
|---|---:|
| ICU | 32 |
| Emergency | 29 |
| General Medicine | 27 |
| Surgery | 22 |

### Staff by Role

The workforce dataset contains three major roles:

- Nurse
- Nursing Assistant
- Doctor

The total staff records analyzed are distributed across these roles and hospital services.

---

## 11. Staff Attendance

| Service | Attendance Rate |
|---|---:|
| Emergency | 60.40% |
| Surgery | 60.23% |
| ICU | 60.12% |
| General Medicine | 59.00% |

Attendance rates are calculated from staff schedule records using the `present` indicator.

---

## 12. Staff Morale

| Service | Average Staff Morale |
|---|---:|
| Emergency | 73.56 |
| General Medicine | 73.10 |
| Surgery | 72.63 |
| ICU | 70.98 |

The staff morale metric provides a service-level view of the morale scores recorded in the dataset.

---

## 13. Key Analytical Observations

The analysis highlights the following patterns:

1. The dataset contains **1,000 patient records** across four hospital services.
2. Patient volumes are relatively distributed across Emergency, Surgery, General Medicine, and ICU.
3. Patients aged **above 60** represent the largest age group in the dataset.
4. Average length of stay ranges from **7.00 to 7.87 days** across services.
5. Patient satisfaction scores range from **78.57 to 80.31**.
6. Monthly admissions vary throughout the year, with the highest recorded monthly value occurring in **September**.
7. Admission and refusal rates vary substantially across hospital services.
8. Average available beds differ considerably between services.
9. Staff attendance rates are close to 60% across the four services.
10. Staff morale varies across services and can be monitored through the dashboard.

---

## 14. Dashboard Applications

The Power BI dashboard converts these analytical results into interactive visualizations.

### Page 1 — Patient Overview

Focuses on:

- Total patients
- Average patient age
- Average length of stay
- Patient satisfaction
- Patients by service
- Monthly admissions

### Page 2 — Service & Operations Analysis

Focuses on:

- Admission rate
- Refusal rate
- Available beds
- Staff attendance
- Staff morale
- Staff distribution by role

---

## 15. Conclusion

The analysis provides a structured overview of patient activity, hospital service utilization, operational capacity, and workforce metrics.

The findings can be explored interactively through the Power BI dashboard, where users can filter the analysis by hospital service and examine different operational and patient-level metrics.

These insights provide a foundation for future extensions such as demand forecasting, length-of-stay prediction, bed occupancy forecasting, and automated healthcare analytics pipelines.
