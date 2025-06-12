SELECT* 
FROM bellabeat_dataset_project.daily_activity_data;

ALTER TABLE bellabeat_dataset_project.daily_activity_data
ADD COLUMN activity_date_new DATE;

UPDATE bellabeat_dataset_project.daily_activity_data
SET activity_date_new =
str_to_date(ActivityDate, '%m/%d/%Y');

ALTER TABLE bellabeat_dataset_project.daily_activity_data
DROP column activity_date;

ALTER TABLE bellabeat_dataset_project.daily_activity_data
DROP column ActivityDate;

ALTER TABLE bellabeat_dataset_project.daily_activity_data
CHANGE COLUMN activity_date_new
activity_date DATE;

SELECT Id, activity_date, count(*)
AS num_duplicates
FROM bellabeat_dataset_project.daily_activity_data
GROUP BY Id, activity_date
HAVING COUNT(*) > 1;

SELECT count(DISTINCT Id) AS
total_unique_participants
FROM bellabeat_dataset_project.daily_activity_data;

SELECT*
FROM bellabeat_dataset_project.daily_activity_data
WHERE TotalSteps = 0
AND (VeryActiveMinutes > 0 OR
FairlyActiveMinutes > 0 OR
LightlyActiveMinutes > 0);

SELECT* 
FROM bellabeat_dataset_project.daily_activity_data
WHERE TotalSteps < 0 OR Calories <
0 OR TotalDistance < 0
OR VeryActiveMinutes < 0 OR
FairlyActiveMinutes < 0 OR
LightlyActiveMinutes < 0 OR
SedentaryMinutes < 0;

SELECT
count(*) AS total_records,
count(DISTINCT Id) AS unique_users,
avg(TotalSteps) AS avg_steps,
avg(TotalDistance) AS avg_distance,
avg(Calories) AS avg_calories,
avg(VeryActiveMinutes) AS avg_very_active_min,
avg(FairlyActiveMinutes) AS avg_fairly_active_min,
avg(LightlyActiveMinutes) AS 
avg_lightly_active_min,
avg(SedentaryMinutes) AS 
avg_sedentary_min
FROM bellabeat_dataset_project.daily_activity_data;

SELECT
Id,
avg(TotalSteps) AS
avg_steps_per_day,
avg(Calories) AS
avg_calories_per_day,
avg(SedentaryMinutes) AS
avg_sedentary_min_per_day,
avg(VeryActiveMinutes + FairlyActiveMinutes + LightlyActiveMinutes) AS
avg_total_active_minutes
FROM bellabeat_dataset_project.daily_activity_data
GROUP BY Id
ORDER BY avg_steps_per_day DESC;

SELECT
user_activity_level,
count(DISTINCT Id) AS num_users 
FROM (SELECT
Id,
avg(TotalSteps) AS 
avg_daily_steps,
CASE
WHEN avg(TotalSteps) >=
10000 THEN 'Very Active'
WHEN avg(TotalSteps) >=
7500 THEN 'Active'
WHEN avg(TotalSteps) >=
5000 THEN 'Moderately Active'
ELSE 'Sedentary'
END AS user_activity_level
FROM bellabeat_dataset_project.daily_activity_data
GROUP BY Id) AS user_categories
GROUP BY user_activity_level
ORDER BY num_users DESC;

SELECT
dayname(activity_date) AS
day_of_week,
avg(TotalSteps) AS avg_steps,
avg(Calories) AS avg_calories,
avg(SedentaryMinutes) AS 
avg_sedentary_minutes,
count(DISTINCT Id) AS 
total_user_days_recorded
FROM bellabeat_dataset_project.daily_activity_data
GROUP BY day_of_week
ORDER BY field(day_of_week, 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');

SELECT Id, sum(TotalSteps) AS
total_steps_overall
FROM bellabeat_dataset_project.daily_activity_data
GROUP BY Id
ORDER BY total_steps_overall DESC
LIMIT 5;

SELECT Id, sum(TotalSteps) AS
total_steps_overall
FROM bellabeat_dataset_project.daily_activity_data
GROUP BY Id
ORDER BY total_steps_overall ASC
LIMIT 5;



