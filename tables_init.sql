CREATE TABLE Staff (
	staff_id int NOT NULL auto_increment PRIMARY KEY,
	job enum('cleaner','carrier','receptionist','manager','cook','waiter') NOT NULL DEFAULT 'waiter',
	sex enum('male','female') DEFAULT 'male',
	hiring_date DATE
);