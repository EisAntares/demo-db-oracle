-- Query di esempio per il database inventario  

-- 1. Seleziona tutti i prodotti con quantità < 10  
SELECT * FROM Products WHERE quantity < 10;  

-- 2. Trova i prodotti con il prezzo > 50€  
SELECT product_name, price FROM Products WHERE price > 50;  

-- 3. Mostra ordini con i dettagli del prodotto (JOIN)  
SELECT o.order_id, p.product_name, o.quantity, o.order_date  
FROM Orders o  
JOIN Products p ON o.product_id = p.product_id;  

-- 4. Aggiungi un nuovo prodotto  
INSERT INTO Products (product_id, product_name, price, quantity)  
VALUES (101, 'Tastiera Meccanica', 99.99, 15);  

-- 5. Aggiorna la quantità di un prodotto  
UPDATE Products SET quantity = 20 WHERE product_id = 101;  