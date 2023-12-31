CREATE SCHEMA taller_bd;

USE taller_bd;

CREATE TABLE REGIONS(

    region_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(25)

);

CREATE TABLE COUNTRIES(

    country_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(40),
    region_id INT

);

CREATE TABLE LOCATIONS(

    location_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    street_address VARCHAR(40),
    postal_code VARCHAR(12),
    city VARCHAR(30),
    state_province VARCHAR(25),
    country_id INT

);

CREATE TABLE DEPARTMENTS(

    departament_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    departament_name VARCHAR(30),
    manager_id INT,
    location_id INT

);

CREATE TABLE JOBS(

    job_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    job_title VARCHAR(35),
    min_salary INT,
    max_salary INT

);

CREATE TABLE EMPLOYEES(

    employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25) UNIQUE,
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id INT,
    salary INT,
    commission_pct INT,
    manager_id INT,
    departament_id INT,
    location_id INT

);

CREATE TABLE JOB_HISTORY(

    employee_id INT,
    date_start DATE,
    end_date DATE,
    job_id INT,
    departament_id INT,
    PRIMARY KEY (employee_id, date_start)
);

ALTER TABLE COUNTRIES ADD CONSTRAINT FOREIGN KEY (region_id) REFERENCES REGIONS(region_id);
ALTER TABLE LOCATIONS ADD CONSTRAINT FOREIGN KEY (country_id) REFERENCES COUNTRIES(country_id);
ALTER TABLE DEPARTMENTS ADD CONSTRAINT FOREIGN KEY (manager_id) REFERENCES EMPLOYEES(employee_id);
ALTER TABLE DEPARTMENTS ADD CONSTRAINT FOREIGN KEY (location_id) REFERENCES LOCATIONS(location_id);
ALTER TABLE EMPLOYEES ADD CONSTRAINT FOREIGN KEY (job_id) REFERENCES JOBS(job_id);
ALTER TABLE EMPLOYEES ADD CONSTRAINT FOREIGN KEY (manager_id) REFERENCES EMPLOYEES(employee_id);
ALTER TABLE EMPLOYEES ADD CONSTRAINT FOREIGN KEY (departament_id) REFERENCES DEPARTMENTS(departament_id);
ALTER TABLE JOB_HISTORY ADD CONSTRAINT FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id);
ALTER TABLE JOB_HISTORY ADD CONSTRAINT FOREIGN KEY (job_id) REFERENCES JOBS(job_id);
ALTER TABLE JOB_HISTORY ADD CONSTRAINT FOREIGN KEY (departament_id) REFERENCES DEPARTMENTS(departament_id);
    

INSERT INTO REGIONS (region_id, region_name)
VALUES
(1, 'North America'),
(2, 'South America'),
(3, 'Europe'),
(4, 'Asia'),
(5, 'Australia'),
(6, 'Antartica'),
(7, 'Africa'),
(8, 'Middle East'),
(9, 'Caribbean'),
(10, 'Central America'),
(11, 'Greenland'),
(12, 'Arctic'),
(13, 'Atlantic Ocean'),
(14, 'Pacific Ocean'),
(15, 'Indian Ocean'),
(16, 'Mediterranean Sea'),
(17, 'Baltic Sea'),
(18, 'North Sea'),
(19, 'Black Sea'),
(20, 'Red Sea'),
(21, 'Caspian Sea'),
(22, 'Dead Sea'),
(23, 'Sea of Japan'),
(24, 'Sea of Okhotsk'),
(25, 'Sea of Azov'),
(26, 'Sea of Galilee'),
(27, 'Sea of Crete'),
(28, 'Sea of Marmara'),
(29, 'Sea of Cortez'),
(30, 'Sea of Chiloé'),
(31, 'Sea of the islands'),
(32, 'Sea of the archipelago'),
(33, 'Sea of the quiches'),
(34, 'Sea of the dwellers'),
(35, 'Sea of the as'),
(36, 'Gulf of Mexico'),
(37, 'Gulf of Aden'),
(38, 'Gulf of Guinea'),
(39, 'Gulf of Thailand'),
(40, 'Gulf of Bothnia'),
(41, 'Gulf of Riga'),
(42, 'Gulf of California'),
(43, 'Baffin Bay'),
(44, 'Beaufort Sea'),
(45, 'Labrador Sea'),
(46, 'Sea of Japan'),
(47, 'East China Sea'),
(48, 'Philippine Sea'),
(49, 'Andaman Sea'),
(50, 'Timor Sea');

INSERT INTO COUNTRIES (country_id, country_name, region_id)
VALUES 
(1, 'Colombia', FLOOR(1+RAND()*50)),
(2, 'Brazil', FLOOR(1+RAND()*50)),
(3, 'Argentina', FLOOR(1+RAND()*50)),
(4, 'Chile', FLOOR(1+RAND()*50)),
(5, 'Peru', FLOOR(1+RAND()*50)),
(6, 'Ecuador', FLOOR(1+RAND()*50)),
(7, 'Bolivia', FLOOR(1+RAND()*50)),
(8, 'Venezuela', FLOOR(1+RAND()*50)),
(9, 'Guyana', FLOOR(1+RAND()*50)),
(10, 'Suriname', FLOOR(1+RAND()*50)),
(11, 'French Guiana', FLOOR(1+RAND()*50)),
(12, 'Uruguay', FLOOR(1+RAND()*50)),
(13, 'Paraguay', FLOOR(1+RAND()*50)),
(14, 'Panama', FLOOR(1+RAND()*50)),
(15, 'Costa Rica', FLOOR(1+RAND()*50)),
(16, 'Nicaragua', FLOOR(1+RAND()*50)),
(17, 'Honduras', FLOOR(1+RAND()*50)),
(18, 'El Salvador', FLOOR(1+RAND()*50)),
(19, 'Guatemala', FLOOR(1+RAND()*50)),
(20, 'Belize', FLOOR(1+RAND()*50)),
(21, 'Mexico', FLOOR(1+RAND()*50)),
(22, 'United States of America', FLOOR(1+RAND()*50)),
(23, 'Canada', FLOOR(1+RAND()*50)),
(24, 'Greenland', FLOOR(1+RAND()*50)),
(25, 'Cuba', FLOOR(1+RAND()*50)),
(26, 'Haiti', FLOOR(1+RAND()*50)),
(27, 'Dominican Republic', FLOOR(1+RAND()*50)),
(28, 'Jamaica', FLOOR(1+RAND()*50)),
(29, 'Puerto Rico', FLOOR(1+RAND()*50)),
(30, 'Trinidad and Tobago', FLOOR(1+RAND()*50)),
(31, 'Bahamas', FLOOR(1+RAND()*50)),
(32, 'Barbados', FLOOR(1+RAND()*50)),
(33, 'Saint Lucia', FLOOR(1+RAND()*50)),
(34, 'Saint Vincent and the Grenadines', FLOOR(1+RAND()*50)),
(35, 'Antigua and Barbuda', FLOOR(1+RAND()*50)),
(36, 'Grenada', FLOOR(1+RAND()*50)),
(37, 'Saint Kitts and Nevis', FLOOR(1+RAND()*50)),
(38, 'Dominica', FLOOR(1+RAND()*50)),
(39, 'Anguilla', FLOOR(1+RAND()*50)),
(40, 'Montserrat', FLOOR(1+RAND()*50)),
(41, 'Turks and Caicos Islands', FLOOR(1+RAND()*50)),
(42, 'British Virgin Islands', FLOOR(1+RAND()*50)),
(43, 'Cayman Islands', FLOOR(1+RAND()*50)),
(44, 'Bermuda', FLOOR(1+RAND()*50)),
(45, 'Aruba', FLOOR(1+RAND()*50)),
(46, 'Curaçao', FLOOR(1+RAND()*50)),
(47, 'Sint Maarten', FLOOR(1+RAND()*50)),
(48, 'Saint Martin', FLOOR(1+RAND()*50)),
(49, 'Saint Barthélemy', FLOOR(1+RAND()*50)),
(50, 'Anguilla', FLOOR(1+RAND()*50)),
(51, 'Saba', FLOOR(1+RAND()*50)),
(52, 'Sint Eustatius', FLOOR(1+RAND()*50)),
(53, 'Bonaire', FLOOR(1+RAND()*50)),
(54, 'Saint Pierre and Miquelon', FLOOR(1+RAND()*50)),
(55, 'Ascension and Tristan da Cunha', FLOOR(1+RAND()*50)),
(56, 'Falkland Islands', FLOOR(1+RAND()*50)),
(57, 'South Sandwich Islands', FLOOR(1+RAND()*50)),
(58, 'British Indian Ocean', FLOOR(1+RAND()*50));

INSERT INTO JOBS (job_title, min_salary, max_salary) VALUES
    ('Accountant', 60000, 100000),
    ('Sales Manager', 50000, 90000),
    ('Programmer', 55000, 95000),
    ('Marketing Coordinator', 45000, 85000),
    ('HR Specialist', 48000, 88000),
    ('Financial Analyst', 60000, 100000),
    ('Customer Service Representative', 40000, 80000),
    ('Operations Manager', 65000, 110000),
    ('Graphic Designer', 45000, 85000),
    ('Accountant', 55000, 95000),
    ('Administrative Assistant', 38000, 78000),
    ('Product Manager', 70000, 120000),
    ('Quality Assurance Tester', 48000, 88000),
    ('Public Relations Specialist', 50000, 90000),
    ('IT Support Specialist', 42000, 82000),
    ('Executive Assistant', 48000, 88000),
    ('Retail Sales Associate', 35000, 75000),
    ('Project Manager', 65000, 110000),
    ('Customer Success Manager', 55000, 95000),
    ('Business Development Representative', 45000, 85000),
    ('Legal Assistant', 40000, 80000),
    ('Operations Coordinator', 48000, 88000),
    ('Event Planner', 42000, 82000),
    ('Systems Administrator', 55000, 95000),
    ('Technical Writer', 50000, 90000),
    ('Warehouse Manager', 60000, 100000),
    ('Assistant Manager', 48000, 88000),
    ('Real Estate Agent', 45000, 85000),
    ('Digital Marketing Specialist', 50000, 90000),
    ('Mechanical Engineer', 60000, 100000),
    ('Healthcare Administrator', 55000, 95000),
    ('Content Writer', 42000, 82000),
    ('Financial Advisor', 65000, 110000),
    ('Human Resources Manager', 70000, 120000),
    ('Legal Counsel', 65000, 110000),
    ('UI/UX Designer', 55000, 95000),
    ('Logistics Coordinator', 48000, 88000),
    ('Insurance Agent', 45000, 85000),
    ('Web Developer', 60000, 100000),
    ('Executive Chef', 70000, 120000),
    ('Nurse Practitioner', 65000, 110000),
    ('Pharmacist', 80000, 130000),
    ('Social Media Manager', 50000, 90000),
    ('Electrician', 45000, 85000),
    ('Fitness Trainer', 40000, 80000),
    ('Architect', 60000, 100000),
    ('Mechanic', 42000, 82000),
    ('Dental Hygienist', 48000, 88000),
    ('Plumber', 45000, 85000),
    ('Veterinarian', 70000, 120000);

INSERT INTO EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, 
            location_id)
VALUES
(1, 'John', 'Doe', 'john@example.com', '123-456-7890', '2023-01-15', 1, 50000, 10, 1,2),
(2, 'Jane', 'Smith', 'jane@example.com', '987-654-3210', '2022-05-20', 2, 60000, 15, 1,2),
(3, 'Michael', 'Johnson', 'michael@example.com', '111-222-3333', '2023-03-10', 3, 55000, 12, 1,2),
(4, 'William', 'Adams', 'william@example.com', '333-444-5555', '2022-08-12', 1, 52000, 8, 2,2),
(5, 'Olivia', 'Garcia', 'olivia@example.com', '777-888-9999', '2023-02-05', 3, 58000, 10, 2,2),
(6, 'James', 'Martinez', 'james@example.com', '222-333-4444', '2022-07-19', 2, 59000, 12, 1,2),
(7, 'Sophie', 'Wilson', 'sophie@example.com', '555-666-7777', '2022-09-30', 4, 65000, 18, 3,2),
(8, 'Liam', 'Lopez', 'liam@example.com', '999-888-7777', '2023-01-25', 1, 51000, 9, 3,2),
(9, 'Ava', 'Gonzalez', 'ava@example.com', '777-222-3333', '2022-12-07', 2, 62000, 14, 2,2),
(10, 'Noah', 'Perez', 'noah@example.com', '111-555-9999', '2023-03-28', 3, 54000, 11, 1,2),
(11, 'Isabella', 'Torres', 'isabella@example.com', '777-333-1111', '2022-06-15', 4, 63000, 20, 1,2),
(12, 'Ethan', 'Ortiz', 'ethan@example.com', '999-444-8888', '2022-10-10', 1, 50000, 10, NULL,2),
(13, 'Mia', 'Flores', 'mia@example.com', '111-666-4444', '2023-02-12', 2, 59000, 12, 2,2),
(14, 'Lucas', 'Rivera', 'lucas@example.com', '777-777-7777', '2022-08-19', 3, 57000, 13, 2,2),
(15, 'Amelia', 'Long', 'amelia@example.com', '555-999-6666', '2023-01-04', 4, 64000, 16, 3,2),
(16, 'Oliver', 'Kim', 'oliver@example.com', '222-888-4444', '2022-11-29', 1, 53000, 8, 3,2),
(17, 'Charlotte', 'Nguyen', 'charlotte@example.com', '333-777-9999', '2022-07-05', 2, 61000, 15, 1,2),
(18, 'Elijah', 'Chen', 'elijah@example.com', '111-444-7777', '2023-03-16', 3, 56000, 11, 1,2),
(19, 'Harper', 'Singh', 'harper@example.com', '777-555-2222', '2022-06-25', 4, 66000, 18, 2,2),
(20, 'Aiden', 'Wang', 'aiden@example.com', '888-444-2222', '2023-02-22', 1, 52000, 9, 2,2),
(21, 'Evelyn', 'Gupta', 'evelyn@example.com', '333-666-9999', '2022-09-18', 2, 60000, 14, 1,2),
(22, 'Alexander', 'Martínez', 'alexander@example.com', '444-777-8888', '2023-01-30', 3, 55000, 10, 1,2),
(23, 'Luna', 'Liu', 'luna@example.com', '666-333-9999', '2022-12-22', 4, 67000, 16, 3,2),
(24, 'Mateo', 'Brown', 'mateo@example.com', '111-888-3333', '2022-10-02', 1, 51000, 8, 3,2),
(25, 'Layla', 'Ali', 'layla@example.com', '888-333-7777', '2023-03-04', 2, 58000, 12, 2,2),
(26, 'Carter', 'Khan', 'carter@example.com', '666-222-5555', '2022-08-14', 3, 59000, 13, 2,2),
(27, 'Aria', 'García', 'aria@example.com', '777-444-2222', '2023-01-07', 4, 65000, 17, 1,2),
(28, 'Mason', 'Rodríguez', 'mason@example.com', '333-666-4444', '2022-11-02', 1, 52000, 9, 1,2),
(29, 'Scarlett', 'Hernández', 'scarlett@example.com', '111-999-5555', '2022-07-12', 2, 61000, 15, 2,2),
(30, 'Zoe', 'Li', 'zoe@example.com', '777-999-1111', '2023-02-14', 3, 56000, 11, 3,2),
(31, 'Riley', 'Wu', 'riley@example.com', '333-555-7777', '2023-04-05', 4, 66000, 19, 2,2),
(32, 'Hudson', 'Park', 'hudson@example.com', '555-111-8888', '2022-09-26', 1, 53000, 8, NULL,2),
(33, 'Penelope', 'Kim', 'penelope@example.com', '777-333-5555', '2023-01-19', 2, 59000, 12, 1,2),
(34, 'Bentley', 'Chung', 'bentley@example.com', '444-888-2222', '2022-08-22', 3, 60000, 14, 1,2),
(35, 'Nova', 'Gao', 'nova@example.com', '999-333-6666', '2023-02-18', 4, 54000, 11, 2,2),
(36, 'Kai', 'Kravitz', 'kai@example.com', '666-888-5555', '2022-06-25', 1, 64000, 18, 3,2),
(37, 'Emery', 'Santos', 'emery@example.com', '222-999-4444', '2023-01-05', 2, 53000, 9, 3,2),
(38, 'Ivy', 'Ramos', 'ivy@example.com', '777-111-3333', '2022-11-18', 3, 61000, 15, 1,2),
(39, 'Xander', 'Chavez', 'xander@example.com', '555-222-7777', '2023-03-20', 4, 55000, 10, 1,2),
(40, 'Cali', 'Yu', 'cali@example.com', '111-666-8888', '2022-07-08', 1, 65000, 20, 2,2),
(41, 'Dallas', 'Zhang', 'dallas@example.com', '888-111-7777', '2023-02-24', 2, 54000, 8, 2,2),
(42, 'Phoenix', 'Wang', 'phoenix@example.com', '333-666-9999', '2022-10-28', 3, 62000, 14, 3,2),
(43, 'Jasper', 'Liu', 'jasper@example.com', '777-888-1111', '2023-01-14', 4, 56000, 11, 3,2),
(44, 'Sienna', 'Gupta', 'sienna@example.com', '444-999-2222', '2022-12-11', 1, 66000, 18, 1,2),
(45, 'Lennon', 'Das', 'lennon@example.com', '999-444-8888', '2023-03-30', 2, 55000, 10, 1,2),
(46, 'Skyler', 'Patel', 'skyler@example.com', '333-555-9999', '2022-08-20', 3, 63000, 15, 2,2),
(47, 'Aubrey', 'Wong', 'aubrey@example.com', '777-222-6666', '2023-01-09', 4, 57000, 12, 2,2),
(48, 'River', 'Chen', 'river@example.com', '111-777-3333', '2022-11-14', 1, 67000, 17, 3,2),
(49, 'Eden', 'Singh', 'eden@example.com', '888-333-6666', '2022-07-23', 2, 56000, 9, 3,2),
(50, 'Sawyer', 'Das', 'sawyer@example.com', '444-666-9999', '2023-02-26', 3, 64000, 16, 1,2);


INSERT INTO DEPARTMENTS (departament_name, manager_id)
VALUES
('Sales', 9),
('Marketing', 39),
('Finance', 17),
('Human Resources', 18),
('IT', 40),
('Customer Service', 43),
('Research and Development', 47),
('Legal', 3),
('Operations', 26),
('Supply Chain', 21),
('Quality Assurance',  26),
('Engineering',  15),
('Purchasing',  47),
('Administration',  39),
('Public Relations',  5),
('Product Management', 8),
('Business Development', 23),
('Accounting',  43),
('Training', 44),
('Logistics', 40),
('Compliance', 20),
('Facilities', 27),
('Strategic Planning', 26),
('Risk Management', 49),
('Internal Audit',  18),
('Sales',  40),
('Marketing',  44),
('Finance',  2),
('Human Resources',  25),
('IT',  21),
('Customer Service',1),
('Research and Development', 28),
('Legal',  28),
('Operations',  27),
('Supply Chain',  36),
('Quality Assurance',  27),
('Engineering', 43),
('Purchasing',  28),
('Administration',  43),
('Public Relations', 15),
('Product Management',  27),
('Business Development',  15),
('Accounting',  36),
('Training', 43),
('Logistics', 45),
('Compliance',  15),
('Facilities',  37),
('Strategic Planning', 45),
('Risk Management',  37),
('Internal Audit',  36);


UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 9 LIMIT 1) WHERE employee_id = 9;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 39 LIMIT 1) WHERE employee_id = 39;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 17 LIMIT 1) WHERE employee_id = 17;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 18 LIMIT 1) WHERE employee_id = 18;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 40 LIMIT 1) WHERE employee_id = 40;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 43 LIMIT 1) WHERE employee_id = 43;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 47 LIMIT 1) WHERE employee_id = 47;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 3 LIMIT 1) WHERE employee_id = 3;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 26 LIMIT 1) WHERE employee_id = 26;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 21 LIMIT 1) WHERE employee_id = 21;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 26 LIMIT 1) WHERE employee_id = 26;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 15 LIMIT 1) WHERE employee_id = 15;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 47 LIMIT 1) WHERE employee_id = 47;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 39 LIMIT 1) WHERE employee_id = 39;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 5 LIMIT 1) WHERE employee_id = 5;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 8 LIMIT 1) WHERE employee_id = 8;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 23 LIMIT 1) WHERE employee_id = 23;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 43 LIMIT 1) WHERE employee_id = 43;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 44 LIMIT 1) WHERE employee_id = 44;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 40 LIMIT 1) WHERE employee_id = 40;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 20 LIMIT 1) WHERE employee_id = 20;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 27 LIMIT 1) WHERE employee_id = 27;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 26 LIMIT 1) WHERE employee_id = 26;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 49 LIMIT 1) WHERE employee_id = 49;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 18 LIMIT 1) WHERE employee_id = 18;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 40 LIMIT 1) WHERE employee_id = 40;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 44 LIMIT 1) WHERE employee_id = 44;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 2 LIMIT 1) WHERE employee_id = 2;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 25 LIMIT 1) WHERE employee_id = 25;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 21 LIMIT 1) WHERE employee_id = 21;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 1 LIMIT 1) WHERE employee_id = 1;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 28 LIMIT 1) WHERE employee_id = 28;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 28 LIMIT 1) WHERE employee_id = 28;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 27 LIMIT 1) WHERE employee_id = 27;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 36 LIMIT 1) WHERE employee_id = 36;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 27 LIMIT 1) WHERE employee_id = 27;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 43 LIMIT 1) WHERE employee_id = 43;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 15 LIMIT 1) WHERE employee_id = 15;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 27 LIMIT 1) WHERE employee_id = 27;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 15 LIMIT 1) WHERE employee_id = 15;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 36 LIMIT 1) WHERE employee_id = 36;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 43 LIMIT 1) WHERE employee_id = 43;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 45 LIMIT 1) WHERE employee_id = 45;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 15 LIMIT 1) WHERE employee_id = 15;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 37 LIMIT 1) WHERE employee_id = 37;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 45 LIMIT 1) WHERE employee_id = 45;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 37 LIMIT 1) WHERE employee_id = 37;
UPDATE EMPLOYEES SET departament_id = (SELECT departament_id FROM DEPARTMENTS WHERE manager_id = 36 LIMIT 1) WHERE employee_id = 36;


INSERT INTO LOCATIONS (street_address, postal_code, city, state_province, country_id)
VALUES
('123 Main St', '12345', 'Anytown', 'ABC State', FLOOR(1+RAND()*50)),
('456 Elm St', '67890', 'Otherville', 'XYZ State', FLOOR(1+RAND()*50)),
('789 Oak St', '13579', 'Another City', 'LMN State', FLOOR(1+RAND()*50)),
('987 Wall St', '54321', 'New City', 'QRS State', FLOOR(1+RAND()*50)),
('654 Birch St', '98765', 'Distant Town', 'UVW State', FLOOR(1+RAND()*50)),
('321 Pine St', '24680', 'Smallville', 'IJK State', FLOOR(1+RAND()*50)),
('222 Cedar St', '13579', 'Villageland', 'DEF State', FLOOR(1+RAND()*50)),
('111 Elm St', '98765', 'Mountaintop', 'OPQ State', FLOOR(1+RAND()*50)),
('777 Maple St', '12345', 'Seashore', 'TUV State', FLOOR(1+RAND()*50)),
('888 Oak St', '67890', 'Riverside', 'XYZ State', FLOOR(1+RAND()*50)),
('999 Birch St', '13579', 'Hillside', 'ABC State', FLOOR(1+RAND()*50)),
('555 Wall St', '54321', 'Valley', 'LMN State', FLOOR(1+RAND()*50)),
('444 Main St', '98765', 'Lakeside', 'PQR State', FLOOR(1+RAND()*50)),
('333 Pine St', '24680', 'Countryside', 'GHI State', FLOOR(1+RAND()*50)),
('666 Elm St', '13579', 'Metropolis', 'STU State', FLOOR(1+RAND()*50)),
('777 Wall St', '98765', 'Paradise City', 'JKL State', FLOOR(1+RAND()*50)),
('888 Birch St', '12345', 'Dreamland', 'VWX State', FLOOR(1+RAND()*50)),
('999 Main St', '67890', 'Wonderville', 'DEF State', FLOOR(1+RAND()*50)),
('111 Elm St', '13579', 'Midtown', 'OPQ State', FLOOR(1+RAND()*50)),
('222 Cedar St', '54321', 'Uptown', 'IJK State', FLOOR(1+RAND()*50)),
('333 Wall St', '24680', 'Downtown', 'TUV State', FLOOR(1+RAND()*50)),
('444 Maple St', '13579', 'Suburbia', 'ABC State', FLOOR(1+RAND()*50)),
('555 Elm St', '98765', 'Ruraltown', 'LMN State', FLOOR(1+RAND()*50)),
('666 Pine St', '12345', 'Township', 'PQR State', FLOOR(1+RAND()*50)),
('777 Wall St', '67890', 'Oasis', 'GHI State', FLOOR(1+RAND()*50)),
('888 Oak St', '13579', 'Wonderland', 'STU State', FLOOR(1+RAND()*50)),
('999 Wall St', '54321', 'Rainbowville', 'JKL State', FLOOR(1+RAND()*50)),
('111 Cedar St', '24680', 'Fantasyland', 'VWX State', FLOOR(1+RAND()*50)),
('222 Maple St', '13579', 'Pleasantville', 'DEF State', FLOOR(1+RAND()*50)),
('333 Elm St', '98765', 'Heaven City', 'OPQ State', FLOOR(1+RAND()*50)),
('444 Wall St', '12345', 'Oblivion', 'IJK State', FLOOR(1+RAND()*50)),
('555 Oak St', '67890', 'Mirage', 'TUV State', FLOOR(1+RAND()*50)),
('666 Cedar St', '13579', 'Fairyland', 'ABC State', FLOOR(1+RAND()*50)),
('777 Pine St', '98765', 'Eden', 'LMN State', FLOOR(1+RAND()*50)),
('888 Wall St', '12345', 'Neverland', 'PQR State', FLOOR(1+RAND()*50)),
('999 Maple St', '67890', 'Elysium', 'GHI State', FLOOR(1+RAND()*50)),
('111 Elm St', '13579', 'Limbo', 'STU State', FLOOR(1+RAND()*50)),
('222 Birch St', '54321', 'Utopia', 'JKL State', FLOOR(1+RAND()*50)),
('333 Wall St', '24680', 'Shangri-La', 'VWX State', FLOOR(1+RAND()*50)),
('444 Cedar St', '13579', 'Paradiso', 'DEF State', FLOOR(1+RAND()*50)),
('555 Elm St', '98765', 'Arcadia', 'OPQ State', FLOOR(1+RAND()*50)),
('666 Pine St', '12345', 'Shambhala', 'IJK State', FLOOR(1+RAND()*50)),
('777 Wall St', '67890', 'Atlantis', 'TUV State', FLOOR(1+RAND()*50)),
('888 Oak St', '13579', 'Asgard', 'ABC State', FLOOR(1+RAND()*50)),
('999 Birch St', '54321', 'El Dorado', 'LMN State', FLOOR(1+RAND()*50)),
('111 Main St', '24680', 'Avalon', 'PQR State', FLOOR(1+RAND()*50)),
('222 Elm St', '13579', 'Camelot', 'GHI State', FLOOR(1+RAND()*50)),
('333 Pine St', '98765', 'Shangri-La', 'STU State', FLOOR(1+RAND()*50)),
('444 Wall St', '12345', 'Olympus', 'JKL State', FLOOR(1+RAND()*50)),
('555 Maple St', '67890', 'Valhalla', 'VWX State', FLOOR(1+RAND()*50));


INSERT INTO JOB_HISTORY (employee_id, date_start, end_date, job_id, departament_id)
VALUES
(1, '2021-01-01', '2022-01-01',FLOOR(1+RAND()*50),FLOOR(1+RAND()*50)),
(2, '2019-04-15', '2020-03-20',FLOOR(1+RAND()*50),FLOOR(1+RAND()*50)),
(3, '2020-10-10', '2021-09-15',FLOOR(1+RAND()*50),FLOOR(1+RAND()*50)),
(4, '2018-07-22', '2019-06-30',FLOOR(1+RAND()*50), 4),
(5, '2019-12-05', '2020-11-11',FLOOR(1+RAND()*50),FLOOR(1+RAND()*50)),
(6, '2020-02-28', '2021-02-28',FLOOR(1+RAND()*50),FLOOR(1+RAND()*50)),
(7, '2021-06-15', '2022-06-15',FLOOR(1+RAND()*50),FLOOR(1+RAND()*50)),
(8, '2020-09-30', '2021-09-30',FLOOR(1+RAND()*50),FLOOR(1+RAND()*50)),
(9, '2019-11-11', '2020-11-11',FLOOR(1+RAND()*50),FLOOR(1+RAND()*50)),
(10, '2018-05-20', '2019-05-20', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(11, '2021-03-03', '2022-03-03', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(12, '2019-08-08', '2020-08-08', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(13, '2020-01-01', '2021-01-01', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(14, '2018-10-20', '2019-10-20', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(15, '2019-12-25', '2020-12-25', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(16, '2020-06-06', '2021-06-06', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(17, '2021-01-01', '2022-01-01', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(18, '2019-04-15', '2020-03-20', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(19, '2020-10-10', '2021-09-15', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(20, '2018-07-22', '2019-06-30', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(21, '2019-12-05', '2020-11-11', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(22, '2020-02-28', '2021-02-28', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(23, '2021-06-15', '2022-06-15', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(24, '2020-09-30', '2021-09-30', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(25, '2019-11-11', '2020-11-11', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(26, '2018-05-20', '2019-05-20', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(27, '2021-03-03', '2022-03-03', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(28, '2019-08-08', '2020-08-08', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(29, '2020-01-01', '2021-01-01', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(30, '2018-10-20', '2019-10-20', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(31, '2019-12-25', '2020-12-25', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(32, '2020-06-06', '2021-06-06', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(33, '2021-01-01', '2022-01-01', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(34, '2019-04-15', '2020-03-20', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(35, '2020-10-10', '2021-09-15', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(36, '2018-07-22', '2019-06-30', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(37, '2019-12-05', '2020-11-11', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(38, '2020-02-28', '2021-02-28', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(39, '2021-06-15', '2022-06-15', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(40, '2020-09-30', '2021-09-30', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(41, '2019-11-11', '2020-11-11', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(42, '2018-05-20', '2019-05-20', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(43, '2021-03-03', '2022-03-03', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(44, '2019-08-08', '2020-08-08', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(45, '2020-01-01', '2021-01-01', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(46, '2018-10-20', '2019-10-20', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(47, '2019-12-25', '2020-12-25', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(48, '2020-06-06', '2021-06-06', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(49, '2021-01-01', '2022-01-01', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50)),
(50, '2019-04-15', '2020-03-20', FLOOR(1+RAND()*50), FLOOR(1+RAND()*50));


UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =1;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =2;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =3;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =4;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =5;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =6;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =7;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =8;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =9;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =10;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =11;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =12;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =13;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =14;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =15;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =16;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =17;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =18;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =19;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =20;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =21;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =22;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =23;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =24;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =25;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =26;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =27;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =28;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =29;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =30;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =31;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =32;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =33;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =34;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =35;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =36;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =37;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =38;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =39;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =40;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =41;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =42;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =43;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =44;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =45;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =46;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =47;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =48;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =49;
UPDATE DEPARTMENTS SET location_id= FLOOR(1+RAND()*50) WHERE departament_id =50;


