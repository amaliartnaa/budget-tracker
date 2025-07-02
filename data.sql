INSERT INTO categories (id, name, parent_id) VALUES
(1, 'Food', NULL),
(2, 'Transport', NULL),
(3, 'Groceries', 1),
(4, 'Restaurants', 1);

INSERT INTO accounts (id, name, initial_balance) VALUES
(1, 'Main Wallet', 5000000);

INSERT INTO transactions (account_id, category_id, date, amount, type, description) VALUES
(1, 3, '2025-06-01', 150000, 'expense', 'Supermarket'),
(1, 4, '2025-06-03', 100000, 'expense', 'Lunch out'),
(1, 2, '2025-06-05', 50000, 'expense', 'Grab'),
(1, NULL, '2025-06-07', 2000000, 'income', 'Salary'),
(1, 3, '2025-06-10', 100000, 'expense', 'Groceries again'),
(1, 4, '2025-06-12', 80000, 'expense', 'Coffee'),
(1, 2, '2025-06-13', 40000, 'expense', 'Bus');
