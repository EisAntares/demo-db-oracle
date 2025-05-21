-- Crea un database di esempio per un inventario  
-- Tabella 'Products' (Prodotti)  
CREATE TABLE Products (  
    product_id INT PRIMARY KEY,  
    product_name VARCHAR(100) NOT NULL,  
    price DECIMAL(10, 2) CHECK (price >= 0),  
    quantity INT DEFAULT 0  
);  

-- Tabella 'Suppliers' (Fornitori)  
CREATE TABLE Suppliers (  
    supplier_id INT PRIMARY KEY,  
    supplier_name VARCHAR(100) NOT NULL,  
    contact_email VARCHAR(100)  
);  

-- Tabella 'Orders' (Ordini)  
CREATE TABLE Orders (  
    order_id INT PRIMARY KEY,  
    product_id INT,  
    order_date DATE,  
    quantity INT,  
    FOREIGN KEY (product_id) REFERENCES Products(product_id)  
);  