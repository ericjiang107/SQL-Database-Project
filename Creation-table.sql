-- Creation table
CREATE TABLE Salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE Customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	address VARCHAR(150),
	email VARCHAR(150),
	billing_info VARCHAR(150)
);

CREATE TABLE Mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE Cars(
	vin_id VARCHAR(100) PRIMARY KEY,
	car_make VARCHAR(100),
	car_model VARCHAR(100),
	year NUMERIC(4),
	color VARCHAR(50),
	new_or_used VARCHAR(5)
);

CREATE TABLE SalesInvoice(
	sale_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	salesperson_id INTEGER,
	vin_id VARCHAR(100),
	sales_date DATE DEFAULT CURRENT_TIMESTAMP,
	price NUMERIC(8,2),
	FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
	FOREIGN KEY(salesperson_id) REFERENCES Salesperson(salesperson_id),
	FOREIGN KEY(vin_id) REFERENCES Cars(vin_id)
);

CREATE TABLE ServiceInvoices(
	service_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	vin_id VARCHAR(100),
	service_date DATE DEFAULT CURRENT_TIMESTAMP,
	service_type VARCHAR(150),
	price NUMERIC(8,2),
	FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
	FOREIGN KEY(vin_id) REFERENCES Cars(vin_id)
);

CREATE TABLE ServiceTicket(
	ticket_id SERIAL PRIMARY KEY,
	mechanic_id INTEGER,
	service_id INTEGER,
	FOREIGN KEY(mechanic_id) REFERENCES Mechanic(mechanic_id),
	FOREIGN KEY(service_id) REFERENCES SERVICEINVOICES(service_id)
);