drop table if exists recipes;
drop table if exists doctors;
drop table if exists patients;

CREATE TABLE doctors (
   id SERIAL PRIMARY KEY,
   first_name VARCHAR (45),
   last_name VARCHAR (45),
   middle_name VARCHAR (45),
   specialization VARCHAR (45)
);

CREATE TABLE patients (
   id SERIAL PRIMARY KEY,
   first_name VARCHAR (45),
   last_name VARCHAR (45),
   middle_name VARCHAR (45),
   phone_number VARCHAR (45)
);

CREATE TABLE recipes (
   id SERIAL PRIMARY KEY,
   description VARCHAR (128),
   doctor INT,
   patient INT,
   creation_date timestamp,
   validity timestamp,
   priority INT,
   FOREIGN KEY (doctor) REFERENCES doctors (ID),
   FOREIGN KEY (patient) REFERENCES patients (ID)
);