CREATE TABLE categories (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	parent_id INTEGER REFERENCES categories(id)
);

CREATE TABLE accounts (
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	initial_balance NUMERIC DEFAULT 0
);

CREATE TABLE transactions (
	id SERIAL PRIMARY KEY,
	account_id INTEGER REFERENCES accounts(id),
	category_id INTEGER REFERENCES categories(id),
	date DATE NOT NULL,
	amount NUMERIC NOT NULL,
	type TEXT CHECK (type IN ('income', 'expense')),
	description TEXT
);
