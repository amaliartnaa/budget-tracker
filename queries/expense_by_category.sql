WITH RECURSIVE category_tree AS (
  SELECT id, name FROM categories WHERE parent_id IS NULL
  UNION ALL
  SELECT c.id, c.name FROM categories c
  JOIN category_tree ct ON c.parent_id = ct.id
)
SELECT ct.name AS category, SUM(t.amount) AS total
FROM transactions t
JOIN category_tree ct ON t.category_id = ct.id
WHERE t.type = 'expense'
GROUP BY ct.name
ORDER BY total DESC;
