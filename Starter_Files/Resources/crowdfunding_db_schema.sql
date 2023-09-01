--INITIATE SCHEMA

CREATE TABLE contacts (
						contact_id INT NOT NULL PRIMARY KEY,
						first_name VARCHAR(50) NOT NULL,
						last_name VARCHAR(50) NOT NULL,
						email VARCHAR(100) NOT NULL
						);

CREATE TABLE category (
						category_id VARCHAR(4) NOT NULL PRIMARY KEY,
						category VARCHAR(30) NOT NULL
						);
CREATE TABLE subcategory (
						subcategory_id VARCHAR(9) NOT NULL PRIMARY KEY,
						subcategory VARCHAR(30) NOT NULL
						);
CREATE TABLE campaign (
						cf_id INT NOT NULL PRIMARY KEY,
						contact_id INT NOT NULL,
						FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
						company_name VARCHAR(100) NOT NULL,
						description VARCHAR(150) NOT NULL,
						goal NUMERIC NOT NULL,
						pledged NUMERIC NOT NULL,
						outcome VARCHAR(20) NOT NULL,
						backers_count INT NOT NULL,
						country VARCHAR(2) NOT NULL,
						currency VARCHAR(3) NOT NULL,
						launched_date DATE NOT NULL,
						end_date DATE NOT NULL,
						category_id VARCHAR(4) NOT NULL,
						FOREIGN KEY (category_id) REFERENCES category(category_id),
						subcategory_id VARCHAR(9) NOT NULL,
						FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
						);
