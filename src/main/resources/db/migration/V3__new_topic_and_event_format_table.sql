-- Create Topic table
CREATE TABLE topic (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create EventFormat table
CREATE TABLE event_format (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Add new fields to the events table
ALTER TABLE events
ADD COLUMN labels TEXT,
ADD COLUMN featured_image VARCHAR(255),
ADD COLUMN topic_id BIGINT,
ADD COLUMN event_format_id BIGINT;

-- Add foreign key constraints
ALTER TABLE events
ADD CONSTRAINT fk_events_topic
FOREIGN KEY (topic_id) REFERENCES topic(id);

ALTER TABLE events
ADD CONSTRAINT fk_events_event_format
FOREIGN KEY (event_format_id) REFERENCES event_format(id);
