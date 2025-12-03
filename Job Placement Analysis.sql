create database placement;
use placement;

alter table job_placement rename column placement_status to status;
alter table job_placement rename column years_of_experience to experience;
select * from job_placement;

# Job Placement Questions

-- 1. What is the maximum age of candidates in the job placement database?
select max(age) maximum_age from job_placement;

-- 2. How many unique educational streams are represented in the job placement records?
select count(distinct stream) as unique_count from job_placement;

-- 3. How many candidates have exactly 3 years of experience?
select count(*) 3_years_experience from job_placement where experience=3;

-- 4. What are the details of job placements for Computer Science students, sorted by highest to lowest salary?
select * from job_placement where stream='computer science' order by salary desc;

-- 5. What are the details of candidates who got placed, sorted by highest to lowest salary?
select * from job_placement where status='placed' order by salary desc;

-- 6. How many candidates have been successfully placed?
select count(*) placed from job_placement where status='placed';

-- 7. What are the job placement details sorted by the least to most years of experience?
select * from job_placement order by experience;

-- 8. What are the job placement details sorted first by highest to lowest years of experience and then by highest to lowest salary?
select * from job_placement order by experience desc, salary asc;

-- 9. What are the job placement details sorted alphabetically by college name?
select * from job_placement order by college_name asc;

-- 10. What are the details (age, stream, years of experience, salary) of candidates whose years of experience are greater than the minimum experience in the dataset and have a salary of 60,000?
select age, stream, experience, salary from job_placement 
where experience > (select min(experience) from job_placement) and salary=60000;

-- 11. What are the names, ages, streams, and years of experience of placed candidates who belong to the Computer Science stream?
select name, age, stream, experience from job_placement where status='placed' and stream='computer science';

-- 12. What are the names, ages, and streams of candidates older than 25 who have not been placed?
select name, age, stream from job_placement where age>25 and status='not placed';

-- 13. What are all the details of job placements?
select * from job_placement;

-- 14. What are the names, ages, and salaries of female candidates earning more than 50,000?
select name, age, salary from job_placement where gender='female' and salary>50000;

-- 15. What are the names, ages, streams, and salaries of candidates, along with their salary range categorized as 'Low Salary' (below 25,000), 'Medium Salary' (25,000 to 50,000), and 'High Salary' (above 50,000)?
select name, age, stream, salary, 
case
when salary < 25000 then 'Low Salary'
when salary between 25000 and 50000 then 'Medium Salary'
when salary > 50000 then 'High Salary'
else 'unknown'
end as salary_range
from job_placement;

-- 16. What are the names, genders, streams, ages, and years of experience of candidates, along with their job position categorized as 'Fresher' (≤1 year), 'Junior' (<2 years), and 'Senior' (≥2 years)?
select name, gender, age, stream, experience,
case
when experience <= 1 then 'Fresher'
when experience < 2 then 'Junior'
when experience >= 2 then 'Senior'
else 'unknown'
end as job_position
from job_placement;

-- 17. What is the average salary for each educational stream?
select stream, avg(salary) avg_salary from job_placement group by stream;

-- 18. How many candidates belong to each educational stream?
select stream, count(*) candidates from job_placement group by stream;

-- 19. How many candidates have been placed in each educational stream?
select stream, count(*) placed from job_placement where status='placed' group by stream;

-- 20. How many candidates have different years of experience?
select experience, count(*) candidates from job_placement group by experience;

-- 21. How many candidates are placed and not placed?
select status, count(*) as candidates from job_placement group by status;

-- 22. How many candidates are there in each gender category?
select gender, count(*) as candidates from job_placement group by gender;

-- 23. What is the average years of experience for placed and not placed candidates?
select status, avg(experience) avg_experience from job_placement group by status;

-- 24.	What are the maximum and minimum years of experience for each educational stream?
select stream, max(experience) max_experience, min(experience) max_experience 
from job_placement group by stream;

-- 25.	What are the highest, lowest, and average salaries for each educational stream?
select stream, max(salary) highest_salary, min(salary) lowest_salary, avg(salary) avg_salary 
from job_placement group by stream;

-- 26.	What are the salaries of candidates from the Computer Science stream?
select salary from job_placement where stream='computer science';

-- 27.	Which candidates have a salary higher than at least one candidate from the Computer Science stream?
select salary from job_placement where 
salary >(select min(salary) from job_placement where stream='computer science');

-- 28.	Which candidates from streams other than Computer Science have a salary higher than at least one candidate from the Computer Science stream?
select salary from job_placement where stream <>'computer science' and 
salary >(select min(salary) from job_placement where stream='computer science');

-- 29.	Which candidates from streams other than Information Technology have more years of experience than at least one candidate from the Information Technology stream?
select * from job_placement where stream<>'Information Technology' and experience>(select min(experience) from job_placement where stream='Information Technology');

-- 30.	What is the average years of experience for placed and not placed candidates?
select status, avg(experience) from job_placement group by status;

-- 31.	Which streams have more than 10 placed candidates?
select stream, count(*) placed_count from job_placement where status='placed' group by stream having count(*)>10;

-- 32.	Which streams have at least one candidate with a salary greater than 60,000?
select stream, count(*) high_salary_count from job_placement where salary>60000 group by stream having count(*)>=1;

-- 33.	Which streams have at least one candidate with a salary less than 60,000?
select stream, count(*) low_salary_count from job_placement where salary<60000 group by stream having count(*)>=1;

-- 34.	Which streams have more than 10 placed candidates for each level of experience, sorted by years of experience?
select stream, experience, count(*) placed_count 
from job_placement where status='placed' group by stream, experience 
having count(*)>10 order by experience;



