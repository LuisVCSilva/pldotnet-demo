-- create table
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    active BOOLEAN DEFAULT true
);

-- Create PL/.NET functions (C# code inside SQL)
CREATE OR REPLACE FUNCTION add_user(name TEXT, email TEXT)
RETURNS INT AS $$
    // validate
    if (string.IsNullOrWhiteSpace(name) || string.IsNullOrWhiteSpace(email))
        throw new System.Exception("Name and email must be provided");

    // Insert and return id
    var newId = SPI.ExecuteScalar<int>(
        "INSERT INTO users (name, email) VALUES ($1, $2) RETURNING id",
        name, email
    );
    return newId;
$$ LANGUAGE plcsharp;

CREATE OR REPLACE FUNCTION get_active_users()
RETURNS TABLE(id INT, name TEXT, email TEXT) AS $$
    // Return rows from SQL - SPI.Execute returns an enumerable result that PL/.NET maps
    return SPI.Execute("SELECT id, name, email FROM users WHERE active = true");
$$ LANGUAGE plcsharp;

CREATE OR REPLACE FUNCTION toggle_user(user_id INT)
RETURNS VOID AS $$
    SPI.Execute("UPDATE users SET active = NOT active WHERE id = $1", user_id);
$$ LANGUAGE plcsharp;
