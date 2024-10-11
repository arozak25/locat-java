-- Create users table
CREATE TABLE users (
                       id BIGSERIAL PRIMARY KEY,
                       username VARCHAR(50) NOT NULL UNIQUE,
                       email VARCHAR(100) NOT NULL UNIQUE,
                       password_hash VARCHAR(255) NOT NULL,
                       created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Add user_id column to events table
ALTER TABLE events
    ADD COLUMN user_id BIGINT;

-- Add foreign key constraint
ALTER TABLE events
    ADD CONSTRAINT fk_event_user
        FOREIGN KEY (user_id) REFERENCES users(id);

-- Create index on user_id for better query performance
CREATE INDEX idx_event_user_id ON events(user_id);
