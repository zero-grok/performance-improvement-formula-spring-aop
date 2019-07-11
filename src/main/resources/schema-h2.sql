DROP TABLE IF EXISTS Dog;
DROP TABLE IF EXISTS Owner;
DROP TABLE IF EXISTS Pet;

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