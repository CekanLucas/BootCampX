-- Create the database
CREATE DATABASE bootcampx;
-- Start using the database
\c bootcampx; -- enter database from cml

CREATE TABLE student (
 id SERIAL PRIMARY KEY,
 name VARCHAR(15),
 email VARCHAR(50),
 phone VARCHAR(50),
 github VARCHAR(50),
 start_date DATE,
 end_date DATE,
 cohort_id INTEGER
);

-- my attempt
CREATE TABLE cohort (
  id SERIAL PRIMARY KEY,
  name VARCHAR(15),
  start_date DATE,
  end_date DATE
);

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

-- true ans
CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);
