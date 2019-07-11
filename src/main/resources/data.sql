DROP TABLE IF EXISTS Dog;

CREATE TABLE Dog (
    id LONG AUTO_INCREMENT PRIMARY KEY,
    name NVARCHAR(250) NOT NULL,
    color_primary NVARCHAR(250) NOT NULL,
    color_secondary NVARCHAR(250),
    breed_primary NVARCHAR(250) NOT NULL,
    breed_secondary NVARCHAR(250)
);

CREATE TABLE Owner (
    id LONG AUTO_INCREMENT PRIMARY KEY,
    first_name NVARCHAR(250) NOT NULL,
    last_name NVARCHAR(250) NOT NULL,
    street_address NVARCHAR(250) NOT NULL,
    city NVARCHAR(250) NOT NULL,
    state NVARCHAR(2) NOT NULL,
    postal_code INT NOT NULL,
    plus_four TINYINT
);

CREATE TABLE Pet (
    id LONG AUTO_INCREMENT PRIMARY KEY,
    dog LONG,
    owner LONG
);

INSERT INTO Dog (name, color_primary, breed_primary) VALUES
    ('Pepper', 'Black', 'Giant Schnauzer'),
    ('Marnie', 'Black', 'Labrador Retriever'),
    ('Bruno', 'Black', 'Labrador Retriever'),
    ('Kenji', 'Tan', 'Parson Russell Terrier');

INSERT INTO Owner (first_name, last_name, street_address, city, state, postal_code) VALUES
    ('Jeffrey', 'Fate', '123 Dog Ave', 'Seattle', 'WA', '12345'),
    ('Katie', 'Fate', '123 Dog Ave', 'Seattle', 'WA', '12345');