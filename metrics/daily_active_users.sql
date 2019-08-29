SELECT 
    COUNT(DISTINCT(user_id))
FROM
    (
    SELECT * FROM free_tree
    UNION ALL
    SELECT * FROM super_tree
    ) as free_super_tree
WHERE date = current_date-1;