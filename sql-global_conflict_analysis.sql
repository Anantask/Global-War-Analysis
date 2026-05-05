use global_conflict
select * from global_conflict_analysis



-- 1. Which region has the most conflict incidents?
SELECT region, COUNT(*) AS total_incidents
FROM global_conflict_analysis
GROUP BY region
ORDER BY total_incidents DESC;

-- 2. Which country has the highest total casualties?
SELECT country, SUM(total_casualties) AS total_casualties
FROM global_conflict_analysis
GROUP BY country
ORDER BY total_casualties DESC
LIMIT 10;

-- 3. Which attack type is most common?
SELECT attack_type, COUNT(*) AS count
FROM global_conflict_analysis
GROUP BY attack_type
ORDER BY count DESC;

-- 4. Which attack type kills the most people on average?
SELECT attack_type, ROUND(AVG(killed), 2) AS avg_killed
FROM global_conflict_analysis
GROUP BY attack_type
ORDER BY avg_killed DESC;

-- 5. How has number of incidents changed per year?
SELECT year, COUNT(*) AS incidents
FROM global_conflict_analysis
GROUP BY year
ORDER BY year;

-- 6. Which decade had the most casualties?
SELECT (year/10)*10 AS decade, SUM(total_casualties) AS total_casualties
FROM global_conflict_analysis
GROUP BY decade
ORDER BY decade;

-- 7. What is the overall attack success rate?
SELECT ROUND(AVG(success) * 100, 2) AS success_rate_percent
FROM global_conflict_analysis;

-- 8. Which attack type has the highest success rate?
SELECT attack_type, ROUND(AVG(success) * 100, 2) AS success_rate
FROM global_conflict_analysis
GROUP BY attack_type
ORDER BY success_rate DESC;

-- 9. Which weapon type causes the most casualties?
SELECT weapon_type, ROUND(AVG(total_casualties), 2) AS avg_casualties
FROM global_conflict_analysis
GROUP BY weapon_type
ORDER BY avg_casualties DESC;

-- 10. Which group is most active? (most incidents)
SELECT group_name, COUNT(*) AS incidents
FROM global_conflict_analysis
GROUP BY group_name
ORDER BY incidents DESC
LIMIT 5;

-- 11. Which target type suffers the most casualties?
SELECT target_type, SUM(killed) AS total_killed
FROM global_conflict_analysis
GROUP BY target_type
ORDER BY total_killed DESC;

-- 12. Most dangerous year overall?
SELECT year, SUM(killed) AS total_killed, COUNT(*) AS incidents
FROM global_conflict_analysis
GROUP BY year
ORDER BY total_killed DESC
LIMIT 5;
