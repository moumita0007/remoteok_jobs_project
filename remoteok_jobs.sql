create database remoteok;
use remoteok;

-- 1. **Most common job titles.**

SELECT `Job Title`, COUNT(*) AS job_count
FROM jobs_remoteok
GROUP BY `Job Title`
ORDER BY job_count DESC;


-- 2. **Count of jobs per location.**
SELECT Location, COUNT(*) AS job_count
FROM jobs_remoteok
GROUP BY Location
ORDER BY job_count DESC;


-- 3. **Jobs with salaries greater than 10LPA.**

SELECT 
    `Job Title`, 
    `Maximum Salary (Dollars)` * 12 AS Annual_Max_Salary
FROM 
    jobs_remoteok
WHERE 
    (`Maximum Salary (Dollars)` * 12) > 1000000
ORDER BY Annual_Max_Salary DESC;


-- 4. **Most frequently hiring companies.**
SELECT Company, COUNT(*) AS job_count
FROM jobs_remoteok
GROUP BY Company
ORDER BY job_count DESC
LIMIT 10;


-- Key Insights from the RemoteOK Job Listings

-- 1.Titles like "Senior Software Engineer", "Account Executive", "Web3 Marketing Manager", 
-- and "Senior Software Engineer" appear frequently.
-- 2.This indicates a strong demand for experienced engineering roles in remote job markets.
-- 3.Multiple specialized roles such as "QA Engineer", "Data Analyst", and "Content Writer" also show up repeatedly. 

-- 4.A significant portion of listings use "Remote", "Anywhere", or "NA" in the location field, showing that:
-- Many jobs are location-agnostic, and
-- Companies are open to fully remote work.
-- 5.Countries like India, United States, Canada, and regions like APAC, Europe also appear, indicating global recruitment.

-- 6.Roles with salaries > $120,000 are typically for:
-- Senior engineering positions (e.g., Fullstack, Backend, Data).
-- 7.The Specialized roles like Machine Learning Engineer, Golang Engineer,
-- and Technical Product Manager is also in that category.
-- 8. The Companies like Contra, Oowlish, and Lead Bank offer multiple high-paying positions.
-- 9. This Indicates strong compensation in tech-heavy remote roles, especially in US-based companies.

-- 10.Contra, Smallstep, and Anchorage Digital have posted multiple job listings, making them active remote recruiters.
-- 11.These companies appear to be early adopters of distributed workforces, especially in the tech and creative sectors.







