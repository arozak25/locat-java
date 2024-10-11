CREATE TABLE events (
                        id BIGSERIAL PRIMARY KEY,
                        name VARCHAR(255) NOT NULL,
                        description TEXT NOT NULL,
                        start_date_time TIMESTAMP NOT NULL,
                        end_date_time TIMESTAMP NOT NULL,
                        location VARCHAR(255) NOT NULL
);


INSERT INTO events (name, description, start_date_time, end_date_time, location)
VALUES (
           'Spring Boot Workshop',
           'A hands-on workshop covering Spring Boot basics and best practices',
           '2023-06-15 09:00:00',
           '2023-06-15 17:00:00',
           'Tech Hub, 123 Main St, Anytown, USA'
       );


