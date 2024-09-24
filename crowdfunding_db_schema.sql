-- crowdfunding_db_schema.sql DATA MODELING

-- Create the crowdfunding_db database
CREATE DATABASE crowdfunding_db;

-- Create the category table
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

-- Create the subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

-- Create the contacts table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Create the campaign table
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    goal NUMERIC(10,2) NOT NULL,
    pledged NUMERIC(10,2) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(10) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launched_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- TESTING THE crowdfunding_db SCHEMA 

select * from campaign;

select * from category;

select * from contacts;

select * from subcategory;

-- Query combining all 4 tables


