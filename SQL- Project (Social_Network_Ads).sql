SELECT * FROM project_social_network_ads.social_network_ads;

-- Q-1:- Retrieve all user information from the database ? 

SELECT * FROM project_social_network_ads.social_network_ads;

-- Q-2:- Count the total number of users in the database ?

SELECT COUNT(*) AS total_users FROM project_social_network_ads.social_network_ads;

-- Q-3: - List all unique genders in the database ?

SELECT DISTINCT gender FROM project_social_network_ads.social_network_ads;

-- Q-4:- Find the average age of users in the database ?

SELECT AVG(age) AS average_age FROM project_social_network_ads.social_network_ads;

-- Q-5:- Find the total number of users who made a purchase ?

SELECT COUNT(*) AS purchased_users 
FROM
project_social_network_ads.social_network_ads
WHERE
purchased = 1;

-- Q-6:- Retrieve the details of users who are females and made a purchase ?

SELECT * 
FROM
project_social_network_ads.social_network_ads
WHERE
gender = 'Female' AND purchased = 1;

-- Q-7:- Find the maximum estimated salary among all users ?

SELECT MAX(estimatedsalary) AS max_salary 
FROM 
project_social_network_ads.social_network_ads;

-- Q-8:- Retrieve users who are males, aged between 30 and 40, and have not made a purchase ?

SELECT * 
FROM 
project_social_network_ads.social_network_ads
WHERE 
gender = 'Male' AND age BETWEEN 30 AND 40 AND purchased = 0;

-- Q-9:- Calculate the average salary of users who made a purchase ?

SELECT AVG(estimatedsalary) AS avg_salary_purchased 
FROM
project_social_network_ads.social_network_ads
WHERE purchased = 1;

-- Q-10:- Find the percentage of users who made a purchase ?

SELECT (COUNT(*) / (SELECT COUNT(*) 
FROM
project_social_network_ads.social_network_ads)) * 100 AS purchase_percentage 
FROM project_social_network_ads.social_network_ads
WHERE purchased = 1;

-- Q-11:- Retrieve all columns for users who have made a purchase ?

SELECT *
FROM 
project_social_network_ads.social_network_ads
WHERE purchased = 1;

-- Q-12:- Find the total number of male and female users in the database ?

SELECT gender, COUNT(*) AS count
FROM 
project_social_network_ads.social_network_ads
GROUP BY gender;

 -- Q-13:- Calculate the average age of users who made a purchase ?
 
 SELECT AVG(age) 
AS avg_age
FROM 
project_social_network_ads.social_network_ads
WHERE purchased = 1;

-- Q-14:- Find the users with an estimated salary greater than $50,000 who made a purchase ?

SELECT *
FROM 
project_social_network_ads.social_network_ads
WHERE 
estimatedsalary > 50000 
AND purchased = 1;

-- Q-15:- List the top 5 estimated salaries in descending order ?

SELECT estimatedsalary
FROM 
project_social_network_ads.social_network_ads
ORDER BY estimatedsalary DESC
LIMIT 5;

-- Q-16:- Calculate the total number of purchases made by users under the age of 30 ?

SELECT COUNT(*) 
AS purchase_count
FROM
project_social_network_ads.social_network_ads
WHERE 
age < 30 AND purchased = 1;

-- Q-17:- Find the average salary of male and female users separately ?

SELECT gender, AVG(estimatedsalary) 
AS avg_salary
FROM 
project_social_network_ads.social_network_ads
GROUP BY gender;

-- Q-18:-  Identify users who have not made a purchase yet ?

SELECT *
FROM 
project_social_network_ads.social_network_ads
WHERE 
purchased = 0;

-- Q-19:- Find the users who made a purchase and have an estimated salary within one standard deviation of the mean salary ?

SELECT *
FROM 
project_social_network_ads.social_network_ads
WHERE 
purchased = 1
  AND estimatedsalary BETWEEN (SELECT AVG(estimatedsalary) - STDDEV(estimatedsalary) FROM project_social_network_ads.social_network_ads)
  AND (SELECT AVG(estimatedsalary) + STDDEV(estimatedsalary) FROM project_social_network_ads.social_network_ads);
  

-- Q-20:- List the details of users who have not made a purchase and have an estimated salary greater than the average estimated salary of users who have made a purchase ?

SELECT *
FROM 
project_social_network_ads.social_network_ads
WHERE purchased = FALSE
AND estimatedsalary > (
    SELECT AVG(estimatedsalary)
    FROM 
    project_social_network_ads.social_network_ads
    WHERE purchased = TRUE
);



													-- * ------ * ------ * ------




















  