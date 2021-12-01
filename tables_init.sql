CREATE TABLE IF NOT EXISTS Staff (
	staff_id int NOT NULL auto_increment PRIMARY KEY,
	job TEXT CHECK (job IN('cleaner','carrier','receptionist','manager','cook','waiter')),
	sex TEXT CHECK (sex IN('male','female')),
	hiring_date DATE
);

CREATE TABLE IF NOT EXISTS Customers (
    c_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(15) NOT NULL,
    last_name VARCHAR(15) NOT NULL,
    phone_number int 
);

CREATE TABLE IF NOT EXISTS Reservations(
    r_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    c_id INT NOT NULL REFERENCES Customers(c_id),
    room_id INT NOT NULL REFERENCES Rooms(room_id),
    date_of_reservation DATE NOT NULL,
    date_of_arrival DATE NOT NULL,
    nights INT NOT NULL,
    food TEXT CHECK (food IN('yes','no')),
    canceled BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS Rooms(
    room_id INT AUTO_INCREMENT NOT NULL,
    class TEXT CHECK (class IN('Luxury','Economy')),
    beds INT,
    availability TEXT CHECK (availability IN ('yes','no')),
    room_number INT 
);