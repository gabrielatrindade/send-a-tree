INSERT INTO daily_active_users_kpi
    (SELECT
	current_date-1 AS date,
	COUNT(DISTINCT(user_id)) AS kpi --daily_active_users
    FROM
	(
	SELECT * FROM free_tree
	UNION ALL
	SELECT * FROM super_tree
	) as free_super_tree
    WHERE date = current_date-1);