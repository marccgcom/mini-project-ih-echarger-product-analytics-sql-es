-- LEVEL 1

-- Question 1: Number of users with sessions
SELECT COUNT(DISTINCT user_id) as num_users FROM sessions;

-- Question 2: Number of chargers used by user with id 1
SELECT COUNT(DISTINCT charger_id) as num_chargers FROM sessions WHERE user_id = 1;



-- LEVEL 2

-- Question 3: Number of sessions per charger type (AC/DC):
SELECT C.`type`, COUNT(S.id) 
FROM sessions as S
INNER JOIN chargers as C
ON S.charger_id = C.id
GROUP BY C.`type`;

-- Question 4: Chargers being used by more than one user
SELECT charger_id, count(distinct user_id) as contador
FROM sessions as S
GROUP BY charger_id
HAVING contador > 1;

-- Question 5: Average session time per charger
SELECT charger_id, AVG(TIMESTAMPDIFF(MINUTE, start_time, end_time)) as average  FROM sessions GROUP BY charger_id;

-- LEVEL 3

-- Question 6: Full username of users that have used more than one charger in one day (NOTE: for date only consider start_time)
SELECT distinct A.user_id, U.name, U.surname FROM 
(
	SELECT user_id, date(start_time), count(distinct charger_id) as counter 
    FROM sessions as S
	GROUP BY user_id, date(start_time) 
    HAVING counter > 1
) A
LEFT JOIN users as U
ON A.user_id = U.id;

-- Question 7: Top 3 chargers with longer sessions
SELECT charger_id, TIMESTAMPDIFF(MINUTE, start_time, end_time) as tiempo 
FROM sessions
ORDER BY tiempo DESC
LIMIT 3;

-- Question 8: Average number of users per charger (per charger in general, not per charger_id specifically)
WITH avgusageperid as (
SELECT charger_id, count(distinct user_id) as contador
FROM sessions as S
GROUP BY charger_id
)

SELECT avg(contador) FROM avgusageperid;


-- Question 9: Top 3 users with more chargers being used
SELECT user_id, count(distinct charger_id) as counter
FROM sessions
GROUP BY user_id
ORDER BY counter desc
LIMIT 3;



-- LEVEL 4

-- Question 10: Number of users that have used only AC chargers, DC chargers or both
WITH user_charger_types AS (
    SELECT
        s.user_id,
        c.type
    FROM
        sessions s
    JOIN
        chargers c ON s.charger_id = c.id
    GROUP BY
        s.user_id, c.type
),
user_classification AS (
    SELECT
        u.user_id,
        GROUP_CONCAT(u.type ORDER BY u.type) AS types_used
    FROM
        user_charger_types u
    GROUP BY
        u.user_id
)
SELECT
    CASE
        WHEN types_used = 'AC' THEN 'AC only'
        WHEN types_used = 'DC' THEN 'DC only'
        WHEN types_used = 'AC,DC' THEN 'Both AC and DC'
    END AS usage_category,
    COUNT(*) AS user_count
FROM
    user_classification
GROUP BY
    usage_category;



-- Question 11: Monthly average number of users per charger
SELECT mes, AVG(counter) FROM 
(
	SELECT MONTH(start_time) as mes, charger_id, count(distinct user_id) as counter
	FROM sessions
	GROUP BY MONTH(start_time), charger_id
) a
GROUP BY mes;

-- Question 12: Top 3 users per charger (for each charger, number of sessions)
WITH tabla AS (
	SELECT
		charger_id,
        user_id,
		count(*) as counter
	FROM sessions
	GROUP BY charger_id, user_id
), ranquing as (
	SELECT
		charger_id,
        user_id,
        counter,
        RANK() OVER (PARTITION BY charger_id ORDER BY counter DESC) AS row_num
	FROM tabla
    )
    SELECT * FROM ranquing WHERE row_num >= 3;

-- LEVEL 5

-- Question 13: Top 3 users with longest sessions per month (consider the month of start_time)
WITH ranqued AS (
    SELECT 
        user_id, 
        MONTH(start_time) AS `month`, 
        TIMESTAMPDIFF(MINUTE, start_time, end_time) AS session_time_minutes,
        RANK() OVER (PARTITION BY user_id, MONTH(start_time) ORDER BY TIMESTAMPDIFF(MINUTE, start_time, end_time) DESC) AS row_num
    FROM 
        sessions
)
SELECT 
    user_id, 
    `month`, 
    session_time_minutes AS longest_session_time_minutes
FROM 
    ranqued
WHERE 
    row_num <= 3
ORDER BY 
    user_id, `month`;

-- Question 14. Average time between sessions for each charger for each month (consider the month of start_time)
WITH session_diffs AS (
    SELECT
        charger_id,
        MONTH(start_time) AS month,
        TIMESTAMPDIFF(MINUTE, LAG(start_time) OVER (PARTITION BY charger_id, MONTH(start_time) ORDER BY start_time), start_time) AS diff_minutes
    FROM
        sessions
),
valid_diffs AS (
    SELECT
        charger_id,
        month,
        diff_minutes
    FROM
        session_diffs
    WHERE
        diff_minutes IS NOT NULL
)
SELECT
    charger_id,
    month,
    AVG(diff_minutes) AS avg_time_between_sessions_minutes
FROM
    valid_diffs
GROUP BY
    charger_id, month
ORDER BY
    charger_id, month;



