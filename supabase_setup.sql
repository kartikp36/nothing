-- Supabase table creation SQL for "Welcome to Nothing" app
-- Run this in your Supabase SQL Editor

CREATE TABLE claimed_passwords (
    id BIGSERIAL PRIMARY KEY,
    password TEXT NOT NULL UNIQUE,
    claimed_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW())
);

-- Create an index on the password column for faster lookups
CREATE INDEX idx_claimed_passwords_password ON claimed_passwords(password);

-- Enable Row Level Security (optional, but recommended)
ALTER TABLE claimed_passwords ENABLE ROW LEVEL SECURITY;

-- Create a policy to allow anyone to read and insert
-- This is permissive for the fun nature of the app
CREATE POLICY "Allow public read access"
ON claimed_passwords FOR SELECT
TO public
USING (true);

CREATE POLICY "Allow public insert access"
ON claimed_passwords FOR INSERT
TO public
WITH CHECK (true);
