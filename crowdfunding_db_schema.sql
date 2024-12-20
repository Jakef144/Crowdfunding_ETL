-- Create the Contacts table
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,           -- Primary key
    first_name VARCHAR(50) NOT NULL,         -- First name of contact
    last_name VARCHAR(50) NOT NULL,          -- Last name of contact
    email VARCHAR(100) NOT NULL UNIQUE       -- Email must be unique
);

-- Create the Category table
CREATE TABLE Category (
    category_id VARCHAR(50) PRIMARY KEY,          -- Primary key
    category VARCHAR(50) NOT NULL           -- Category name
);

-- Create the Subcategory table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY, -- Primary key (from data)
    subcategory VARCHAR(50) NOT NULL       -- Subcategory name
);

-- Create the Campaign table
CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,               -- Primary key
    contact_id INT REFERENCES Contacts(contact_id) ON DELETE CASCADE, -- Foreign key to Contacts
    company_name VARCHAR(255) NOT NULL,     -- Campaign company name
    description TEXT,                       -- Campaign description
    goal FLOAT NOT NULL,                    -- Campaign goal
    pledged FLOAT,                          -- Amount pledged
    outcome VARCHAR(50),                    -- Outcome of the campaign
    backers_count INT,                      -- Number of backers
    country VARCHAR(50),                    -- Campaign country
    currency VARCHAR(10),                   -- Currency used
    launched_date DATE NOT NULL,            -- Campaign launch date
    end_date DATE NOT NULL,                 -- Campaign end date
    category_id VARCHAR(50) REFERENCES category(category_id) ON DELETE SET NULL, -- Foreign key to Category
    subcategory_id VARCHAR(50) REFERENCES subcategory(subcategory_id) ON DELETE SET NULL -- Foreign key to Subcategory
);

SELECT * FROM Contacts;
SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Campaign;