CREATE TABLE IF NOT EXISTS Staff (
	staff_id int NOT NULL auto_increment PRIMARY KEY,
	job enum('cleaner','carrier','receptionist','manager','cook','waiter') NOT NULL DEFAULT 'waiter',
	sex enum('male','female') DEFAULT 'male',
	hiring_date DATE
);

CREATE TABLE IF NOT EXISTS Clients (
    c_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name CHAR[15],
    last_name CHAR[15],
    phone_number int 
);

CREATE TABLE IF NOT EXISTS Reservations(
    r_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    c_id INT NOT NULL FOREIGN KEY 
);