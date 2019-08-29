-- Daily Revenue
-- remember, the first super_tree is free, then I need to check if it is the first one or not
SELECT
(-- it returns people who sent the first super tree yesterday (revenue=count-1)
SELECT SUM(super_tree_sends) FROM
    (SELECT 
	user_id, 
	MIN(super_tree.date) AS first_send
    FROM super_tree
    GROUP BY user_id
    HAVING MIN(super_tree.date) = current_date-1) AS first_send_yesterday
JOIN --*inner* join of two table:
     -- aqueles que enviaram a primeira super tree ontem E quantidade do revenue por usuário (por isso '-1' no count)
-- it returns qty of super tree sends at yesterday by user
    (SELECT
	user_id,
	COUNT(*)-1 AS super_tree_sends
    FROM super_tree
    WHERE date = current_date-1
    GROUP BY user_id) AS revenue
ON first_send_yesterday.user_id = revenue.user_id)
+
(-- it returns people who sent the first super tree before yesterday (revenue=count)
SELECT SUM(super_tree_sends) FROM
    (SELECT 
	user_id, 
	MIN(super_tree.date) AS first_send
    FROM super_tree
    GROUP BY user_id
    HAVING MIN(super_tree.date) < current_date-1) AS first_send_before_yesterday
JOIN
    (SELECT
	user_id,
	COUNT(*) AS super_tree_sends
    FROM super_tree
    WHERE date = current_date-1
    GROUP BY user_id) AS revenue
ON first_send_before_yesterday.user_id = revenue.user_id);