CREATE DATABASE addressbook;
USE addressbook;

CREATE TABLE contact (
    contactID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    phoneNumber VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO contact (firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES ('riddhi', 'prajapati', '123 ok ', 'Ahmedabad', 'Gujarat', '123456', '9874563210', 'ok@example.com' );


INSERT INTO contact (firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES ('drashti', 'panseriya', '123 ok2 ', 'Gandhinagar', 'Gujarat', '654321', '9876543210', 'ok222@example.com' );

INSERT INTO contact (firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES ('jack', 'ok', '456 ok2 ', 'Hyderabad', 'Telangana', '987456', '678941230', 'ok111@example.com' );

INSERT INTO contact (firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES ('tom', 'holland', '562 ok2 ', 'Hyderabad', 'Telangana', '364895', '7894561230', 'ok777@example.com' );

INSERT INTO contact (firstName, lastName, address, city, state, zip, phoneNumber, email)
VALUES ('tom222', 'holland222', '562 ok112 ', 'Hyderabad', 'Telangana', '564895', '8764561230', 'okok11@example.com' );


UPDATE contact SET address = '123 ok22', city = 'NewCity', state = 'NewState', zip = '456321', phoneNumber = '8974563210', email = 'rr.ok@example.com'
WHERE firstName = 'jack' AND lastName = 'ok';

DELETE FROM contact WHERE firstName = 'jack' AND lastName = 'ok';

SELECT * FROM contact WHERE city ="ahmedabad";

SELECT * FROM contact WHERE state ="gujarat";

SELECT city, COUNT(*) as city_count FROM contact GROUP BY city;
SELECT state, COUNT(*) as state_count FROM contact GROUP BY state;
SELECT city, state, COUNT(*) as city_state_count FROM contact GROUP BY city, state;

SELECT * FROM contact WHERE	 city="Hyderabad" ORDER BY firstName;

ALTER TABLE contact ADD COLUMN name VARCHAR(50), ADD COLUMN type VARCHAR(50);
UPDATE contact SET name = 'book1', type='family' WHERE contactID <= 3;
UPDATE contact SET name = 'book2', type='friends' WHERE contactID > 3;
UPDATE contact SET type='profession' WHERE contactID=5;

SELECT type, COUNT(*) as type_count FROM contact GROUP BY type;

INSERT INTO contact (firstName, lastName, address, city, state, zip, phoneNumber, email, name, type) VALUES ('rid', 'pra', '123 okok', 'gandhinagar', 'telangana', '123456', '8976451230', 'okokok@example.com', 'book2', 'friend');

INSERT INTO contact (firstName, lastName, address, city, state, zip, phoneNumber, email, name, type) VALUES ('rid22', 'pra22', '321 okok', 'ahmedabad', 'gujarat', '654231', '7894651230', 'hello@example.com', 'book2', 'family');