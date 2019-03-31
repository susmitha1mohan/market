CREATE TABLE category (
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	CONSTRAINT pk_category_id PRIMARY KEY (id) 

);

INSERT INTO category (name,description,image_url,is_active) VALUES ('Laptop','This is a short description about laptop','CAT_1.png','TRUE');
INSERT INTO category (name,description,image_url,is_active) VALUES ('Television','This is a short description about television','CAT_2.png','TRUE');
INSERT INTO category (name,description,image_url,is_active) VALUES ('Mobile','This is a short description about mobile','CAT_3.png','TRUE');

CREATE TABLE user_detail (
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(70),
	email VARCHAR(100),
	contact_number VARCHAR(15),	
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);

INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('susmitha', 'mohan', 'ADMIN', true, '12345', 'sm@gmail.com', '8888888888');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('sneha', 'mohan', 'SUPPLIER', true, '67890', 'sms@gmail.com', '9999999999');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('pramila', 'mohan', 'SUPPLIER', true, '12345', 'pm@gmail.com', '7777777777');




CREATE TABLE product (
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),	
);	

-- the address table to store the user billing and shipping addresses
CREATE TABLE address (
	id IDENTITY,
	user_id int,
	address_line_one VARCHAR(100),
	address_line_two VARCHAR(100),
	city VARCHAR(20),
	state VARCHAR(20),
	country VARCHAR(20),
	postal_code VARCHAR(10),
	is_billing BOOLEAN,
	is_shipping BOOLEAN,
	CONSTRAINT fk_address_user_id FOREIGN KEY (user_id ) REFERENCES user_detail (id),
	CONSTRAINT pk_address_id PRIMARY KEY (id)
);

-- the cart table to store the user cart top-level details
CREATE TABLE cart (
	id IDENTITY,
	user_id int,
	grand_total DECIMAL(10,2),
	cart_lines int,
	CONSTRAINT fk_cart_user_id FOREIGN KEY (user_id ) REFERENCES user_detail (id),
	CONSTRAINT pk_cart_id PRIMARY KEY (id)
);

-- the cart line table to store the cart details

CREATE TABLE cart_line (
	id IDENTITY,
	cart_id int,
	total DECIMAL(10,2),
	product_id int,
	product_count int,
	buying_price DECIMAL(10,2),
	is_available boolean,
	CONSTRAINT fk_cartline_product_id FOREIGN KEY (product_id ) REFERENCES product (id),
	CONSTRAINT pk_cartline_id PRIMARY KEY (id)
);

-- the order detail table to store the order

CREATE TABLE order_detail (
	id IDENTITY,
	user_id int,
	order_total DECIMAL(10,2),
	order_count int,
	shipping_id int,
	billing_id int,
	order_date date,
	CONSTRAINT fk_order_detail_user_id FOREIGN KEY (user_id) REFERENCES user_detail (id),
	CONSTRAINT fk_order_detail_shipping_id FOREIGN KEY (shipping_id) REFERENCES address (id),
	CONSTRAINT fk_order_detail_billing_id FOREIGN KEY (billing_id) REFERENCES address (id),
	CONSTRAINT pk_order_detail_id PRIMARY KEY (id)
);

-- the order item table to store order items

CREATE TABLE order_item (
	id IDENTITY,
	order_id int,
	total DECIMAL(10,2),
	product_id int,
	product_count int,
	buying_price DECIMAL(10,2),
	CONSTRAINT fk_order_item_product_id FOREIGN KEY (product_id) REFERENCES product (id),
	CONSTRAINT fk_order_item_order_id FOREIGN KEY (order_id) REFERENCES order_detail (id),
	CONSTRAINT pk_order_item_id PRIMARY KEY (id)
);



		
	// add operation
p = new Product();
		
		p.setName("STRAWBERRY");
		p.setBrand("AUSTRIAN BERRIES");
		p.setCategoryID(9);
		p.setActive(true);
		p.setSupplierID(1);
		p.setQuantity(20);
		p.setUnitPrice(120);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
p = new Product();
		
		p.setName("BANANA");
		p.setBrand("INDIAN ORIGIN");
		p.setCategoryID(9);
		p.setActive(true);
		p.setSupplierID(2);
		p.setQuantity(20);
		p.setUnitPrice(80);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
p = new Product();
		
		p.setName("ALPHONSO MANGO");
		p.setBrand("INDIAN");
		p.setCategoryID(9);
		p.setActive(true);
		p.setSupplierID(3);
		p.setQuantity(20);
		p.setUnitPrice(100);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
p = new Product();
		
		p.setName("RAW MANGO");
		p.setBrand("INDIAN");
		p.setCategoryID(9);
		p.setActive(true);
		p.setSupplierID(4);
		p.setQuantity(20);
		p.setUnitPrice(30);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
		
p = new Product();
		
		p.setName("APPLE");
		p.setBrand("WASHINGTON APPLE");
		p.setCategoryID(9);
		p.setActive(true);
		p.setSupplierID(5);
		p.setQuantity(20);
		p.setUnitPrice(120);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
		
p = new Product();
		
		p.setName("ORANGE");
		p.setBrand("SPAIN ORANGES");
		p.setCategoryID(9);
		p.setActive(true);
		p.setSupplierID(6);
		p.setQuantity(20);
		p.setUnitPrice(120);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
		
		p = new Product();
		
		p.setName("GREEN PEAS");
		p.setBrand("INDIAN");
		p.setCategoryID(10);
		p.setActive(true);
		p.setSupplierID(7);
		p.setQuantity(20);
		p.setUnitPrice(20);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
			p = new Product();
		
		p.setName("BRINJAL");
		p.setBrand("INDIAN");
		p.setCategoryID(10);
		p.setActive(true);
		p.setSupplierID(8);
		p.setQuantity(20);
		p.setUnitPrice(33);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
			p = new Product();
		
		p.setName("TOMATO");
		p.setBrand("INDIAN");
		p.setCategoryID(10);
		p.setActive(true);
		p.setSupplierID(9);
		p.setQuantity(20);
		p.setUnitPrice(20);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
			p = new Product();
		
		p.setName("RADISH");
		p.setBrand("INDIAN");
		p.setCategoryID(10);
		p.setActive(true);
		p.setSupplierID(10);
		p.setQuantity(20);
		p.setUnitPrice(15);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
			p = new Product();
		
		p.setName("ONION");
		p.setBrand("INDIAN");
		p.setCategoryID(10);
		p.setActive(true);
		p.setSupplierID(11);
		p.setQuantity(20);
		p.setUnitPrice(25);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
			p = new Product();
		
		p.setName("CABBAGE");
		p.setBrand("INDIAN");
		p.setCategoryID(10);
		p.setActive(true);
		p.setSupplierID(12);
		p.setQuantity(20);
		p.setUnitPrice(10);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
			p = new Product();
		
		p.setName("CARROTS");
		p.setBrand("OOTY CARROT");
		p.setCategoryID(10);
		p.setActive(true);
		p.setSupplierID(13);
		p.setQuantity(20);
		p.setUnitPrice(45);
		p.setDescription("FRESH FROM THE ORGANIC FARMS!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
		p = new Product();
		
		p.setName("AUSTRALIAN OIL LAVENDER ");
		p.setBrand("ANVEYA");
		p.setCategoryID(11);
		p.setActive(true);
		p.setSupplierID(14);
		p.setQuantity(20);
		p.setUnitPrice(445);
		p.setDescription("OILS THAT HEAL!");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
		p = new Product();
		
		p.setName("AUSTRALIAN OIL TEA TREE ");
		p.setBrand("ANVEYA");
		p.setCategoryID(11);
		p.setActive(true);
		p.setSupplierID(14);
		p.setQuantity(20);
		p.setUnitPrice(645);
		p.setDescription("OILS THAT HEAL");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
		p = new Product();
		
		p.setName("AUSTRALIAN OIL PEPPERMINT ");
		p.setBrand("ANVEYA");
		p.setCategoryID(11);
		p.setActive(true);
		p.setSupplierID(14);
		p.setQuantity(20);
		p.setUnitPrice(545);
		p.setDescription("OILS THAT HEAL");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
		p = new Product();
		
		p.setName("AUSTRALIAN OIL LEMONGRASS ");
		p.setBrand("ANVEYA");
		p.setCategoryID(11);
		p.setActive(true);
		p.setSupplierID(14);
		p.setQuantity(20);
		p.setUnitPrice(345);
		p.setDescription("OILS THAT HEAL");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
		p = new Product();
		
		p.setName("AUSTRALIAN OIL ORANGE ");
		p.setBrand("ANVEYA");
		p.setCategoryID(11);
		p.setActive(true);
		p.setSupplierID(14);
		p.setQuantity(20);
		p.setUnitPrice(495);
		p.setDescription("OILS THAT HEAL");
		assertEquals("OOPS!Something went wrong",true,proDAO.add(p));
		
		
		
