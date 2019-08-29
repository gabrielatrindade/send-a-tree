---- qty_registrations / qty_*users_sent*_tree (who sent > 1 super tree)
SELECT
    current_date - 1 AS date,
    ROUND(COUNT(DISTINCT registrations.user_id) / COUNT(DISTINCT users_who_sent_more_than_one_super_tree.user_id)::numeric,3) AS super_tree_to_registrations_rate
FROM registrations
LEFT JOIN 
    (
    SELECT 
	super_tree.user_id,
	COUNT(*)
    FROM super_tree
    GROUP BY super_tree.user_id
    HAVING COUNT(*) > 1
    ) AS users_who_sent_more_than_one_super_tree
    ON users_who_sent_more_than_one_super_tree.user_id = registrations.user_id;