# Job Placement SQL Analysis


This repository contains SQL queries used to analyze a **Job Placement Database**.  
The questions cover descriptive statistics, filtering, sorting, categorization, and aggregate analysis across candidate demographics, educational streams, experience levels, salaries, placements, and more.

---

## Dataset Structure

The analysis is based on the following table schema:

**Table Name:** `job_placement`

| Column Name     | Description |
|-----------------|-------------|
| id              | Unique candidate ID |
| name            | Candidate name |
| gender          | Gender of the candidate |
| age             | Candidate age |
| degree          | Degree obtained |
| stream          | Educational stream |
| college_name    | College attended |
| status          | Placement status (Placed / Not Placed) |
| salary          | Salary offered (if placed) |
| gpa             | GPA score |
| experience      | Years of experience |

---

## SQL Analysis Questions

1. Maximum age of candidates.  
2. Number of unique educational streams.  
3. Number of candidates with exactly 3 years of experience.  
4. Job placement details of Computer Science students (sorted by highest salary).  
5. Details of placed candidates (sorted by highest salary).  
6. Number of successfully placed candidates.  
7. Job placements sorted by least to most years of experience.  
8. Job placements sorted by highest experience, then highest salary.  
9. Job placements sorted alphabetically by college name.  
10. Details of candidates whose experience is greater than the minimum and have a salary of 60,000.  
11. Details of placed Computer Science candidates.  
12. Details of candidates older than 25 who are not placed.  
13. All job placement details.  
14. Names, ages, and salaries of female candidates earning more than 50,000.  
15. Salary range classification (Low, Medium, High) for candidates.  
16. Experience-level classification (Fresher, Junior, Senior).  
17. Average salary per educational stream.  
18. Number of candidates per stream.  
19. Number of placed candidates per stream.  
20. Number of candidates grouped by years of experience.  
21. Count of placed vs not placed candidates.  
22. Number of candidates by gender.  
23. Average experience for placed vs not placed candidates.  
24. Maximum and minimum experience for each stream.  
25. Highest, lowest, and average salary for each stream.  
26. Salaries of Computer Science candidates.  
27. Candidates with salary higher than at least one Computer Science candidate.  
28. Non-CS candidates with salary higher than at least one CS candidate.  
29. Non-IT candidates with more experience than at least one IT candidate.  
30. (Duplicate) Average experience for placed vs not placed candidates.  
31. Streams with more than 10 placed candidates.  
32. Streams with at least one salary > 60,000.  
33. Streams with at least one salary < 60,000.  
34. Streams with more than 10 placed candidates for each experience level, sorted by experience.

---

## Purpose

These queries help analyze:

- Job placement trends  
- Salary patterns across streams  
- Candidate experience distribution  
- Performance of educational streams  
- Recruitment and training insights  

---

## How to Use

1. Import job_placement into a SQL database.  
2. Update table/column names if your schema differs.  
3. Run the SQL queries as needed.

---

## Technologies Used

- SQL (MySQL / PostgreSQL compatible)  
- Relational Database Systems  
- Data Analytics Techniques  

---

## Contributions

Contributions are welcome — feel free to propose improvements or additional SQL questions.

---
