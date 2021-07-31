-- Insertion 
INSERT INTO Salesperson(
	salesperson_id,
	first_name,
	last_name
)VALUES
	(1, 'Eric', 'Jiang'),
	(2, 'Zach', 'Porras'),
	(3, 'Hong', 'Gao'),
	(4, 'Jesse', 'Nauman'),
	(5, 'Mike', 'Kaiser'),
	(6, 'Mcdonald', 'Menu'),
	(7, 'Wendy', 'Chicken'),
	(8, 'BurgerKing', '5for5'),
	(9, 'Popeyes', 'ChickenSandwich'),
	(10, 'WhtieCastle', 'Methlab');

INSERT INTO Customers(
	customer_id,
	first_name,
	last_name,
	address,
	email,
	billing_info
)Values
	(1, 'Rick', 'Sanchez', '111 ABCD Av, Astoria, NY 1111', 'youdontgettoknow@yahoo.com', '1111-2222-3333-4444 123 04/29'),
	(2, 'Vish', 'Cresent', '222 EFGH Av, Manhattan, NY 2222', 'cantcomeupwithsomething@gmail.com', '5555-6666-7777-8888 567 08/30'),
	(3, 'Andrew', 'Nuggets', '097 27 Food St, Corona, NY 11234', 'someonegivemeanemail@idk.com', '3294-2769-2760-2058 007 02/20'),
	(4, 'Jerry', 'Chaca', '5270 Mcdonalds Av, Flushing, NY 11271', 'seriouslycanycomeupwithone@money.com', '9467-0983-1252-3532 678 10/24'),
	(5, 'Taira', 'Khang', '720 Burger King DRIVE, East Elmurst, NY 11235', 'sendmemoney@aol.com', '3610-4857-4960-4897 520 11/26'),
	(6, 'John', 'Connor', '63-10 Wendys Blvd, NY 12452', 'steamsale@valve.com', '4721-5832-6839-5682 901 01/21'),
	(7, 'Madden', 'Football', '726 IDK Blvd, Money LA, 5621', 'imrichyrichrich@hollywood.com', '4901-6628-2643-5424 941 04/25'),
	(8, 'Louie', 'French', '645 Simpson Avenue, Jonestown PA, 17038', '1applemhmod73226@oubgusax.site', '2142-4562-7315-2950 492 08/33'),
	(9, 'Rowena', 'Reed', '4090 Tipple Road, Windham CT, 06280', 'kramadanomar6q@thehonestfire.org', '3637-7822-6782-2084 012 11/25'),
	(10, 'Andrea', 'Williamson', '4993 Adamsville Road, TX 78578', 'iibrahim.h@hayuk.pw', '2141-3510-6351-4574 245 09/26'),
	(11, 'Nina', 'Howell', '4041 Koontz Lane North Hollywood, CA 91601', 'smicaka@emlppt.com', '6442-1249-9081-3948 124 07/28'),
	(12, 'Violet', 'Newton', '2852 Carriage Court Punyon, CA 92361', 'lrudrac@prcag.site', '3214-0976-3290-9083 214 10/30');
	
INSERT INTO Mechanic(
	mechanic_id,
	first_name,
	last_name
)Values
	(1, 'Rita', 'Glisson'),
	(2, 'Wally', 'Conner'),
	(3, 'Fiona', 'Titterington'),
	(4, 'Emerson', 'Salvage'),
	(5, 'Ferdinand', 'Mcbride');
	
INSERT INTO Cars(
	vin_id,
	car_make,
	car_model,
	year,
	color,
	new_or_used
)Values
	('1C4BJWDG8DL559834', 'Nissan', 'GT-R', 2021, 'blue', 'new'),
	('5FNRL384X7B133819', 'Toyota', 'Camry', 2005, 'white', 'old'),
	('WP1AC29P65LA91996', 'Toyota', 'Prius', 2010, 'black', NULL),
	('5XYKUDA21DG367493', 'Ford', 'Mustang', 2011, 'black', NULL),
	('JTDBT123710161315', 'Ford', 'Fusion', 2015, 'red', 'old'),
	('1NXAE09B1RZ155488', 'Nissan', 'Sentra', 2019, 'white', NULL),
	('JH4KA3140KC015221', 'Honda', 'Civic', 2022, 'gray', NULL),
	('1C3CDZBG8DN504146', 'Honda', 'Odyssey', 2020, 'yellow', 'old'),
	('WBAKF9C52BE619303', 'BMW', 'Bmw-3 series', 2011, 'black', NULL),
	('3LNHL2JC5CR800713', 'Lincoln Motor Company', 'Lincoln MKZ', 2012, 'white', NULL),
	('1FAFP52UXXA197384', 'Ford', 'Taurus', 1999, 'red', NULL),
	('5FNRL38489B006926', 'Honda', 'Odyssey', 2009, 'blue', NULL);

INSERT INTO SalesInvoice(
	sale_id,
	customer_id,
	salesperson_id,
	vin_id,
	price
)VALUES
	(1, 12, 7, 'JTDBT123710161315', 92001.02),
	(2, 10, 1, '5FNRL384X7B133819', 72257.00),
	(3, 1, 2, '1C3CDZBG8DN504146', 51206.67),
	(4, 4, 4, '1C4BJWDG8DL559834', 23418.64),
	(5, 2, NULL, NULL, NULL),
	(6, 3, NULL, NULL, NULL),
	(7, 5, NULL, NULL, NULL),
	(8, 6, NULL, NULL, NULL),
	(9, 8, NULL, NULL, NULL),
	(10, 9, NULL, NULL, NULL),
	(11, 7, NULL, NULL, NULL),
	(12, 11, NULL, NULL, NULL);

INSERT INTO ServiceInvoices(
	service_id,
	customer_id,
	vin_id,
	service_type,
	price
)VALUES
	(1, 3, 'WP1AC29P65LA91996', 'tire change', 500.00),
	(2, 4, NULL, NULL, NULL),
	(3, 8, 'JH4KA3140KC015221', 'generator problems', 825.15),
	(4, 6, '1NXAE09B1RZ155488', 'gas leak', 325.00),
	(5, 10, NULL, NULL, NULL),
	(6, 9, '5XYKUDA21DG367493', 'car examination', 80.00),
	(7, 3, 'WP1AC29P65LA91996', 'oil change', 100.00),
	(8, 9, '5XYKUDA21DG367493', 'broken ac', 152.65),
	(9, 12, NULL, NULL, NULL),
	(10, 7, 'WBAKF9C52BE619303', 'yearly checkup', 65.00),
	(11, 5, '3LNHL2JC5CR800713', 'backplate repair', 526.24),
	(12, 1, NULL, NULL, NULL),
	(13, 2, '1FAFP52UXXA197384', 'battery charge', 25.00),
	(14, 11, '5FNRL38489B006926', 'broken brake', 256.74);

INSERT INTO ServiceTicket(
	ticket_id,
	mechanic_id,
	service_id
)VALUES
	(1, 2, 1),
	(2, 1, 3),
	(3, 3, 6),
	(4, 5, 9),
	(5, 4, 3),
	(6, 2, 9),
	(7, 1, 7),
	(8, 4, 5),
	(9, 3, 2),
	(10, 5, 11);
	
-- Replaces null with 0 
CREATE OR REPLACE PROCEDURE Zero_price(
	price INTEGER
)
LANGUAGE plpgsql
AS
$$
BEGIN
	UPDATE serviceinvoices
	SET price = 0
	WHERE price = NULL;
	COMMIT;
END;
$$;
	
-- adding customers
CREATE OR REPLACE FUNCTION add_customer(
	_customer_id INTEGER,
	_first_name VARCHAR(150),
	_last_name VARCHAR(150)
)
RETURNS void
AS $$
BEGIN 
	INSERT INTO Customers(customer_id, first_name, last_name)
	VALUES(_customer_id, _first_name, _last_name);
END;
$$
LANGUAGE plpgsql;

SELECT add_customer(13, 'Michael', 'Dwayne');


-- adding new mechanic
CREATE OR REPLACE FUNCTION add_mechanic(
	_mechanic_id INTEGER,
	_first_name VARCHAR(150),
	_last_name VARCHAR(150)
)
RETURNS void
AS $$
BEGIN
	INSERT INTO Mechanic(mechanic_id, first_name, last_name)
	VALUES(_mechanic_id, _first_name, _last_name);
END;
$$
LANGUAGE plpgsql

SELECT add_mechanic(6, 'Morty', 'Smith')
