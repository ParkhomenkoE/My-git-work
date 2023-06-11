-- 1. Вывести телефоны всех поставщиков, кроме тех, что из Germany и France.
SELECT 
	SupplierName,
    Phone
FROM Suppliers
WHERE Country NOT IN ('Germany', 'France')

-- 2. Для товаров до 10 EUR установить категорию 8 и применить наценку в 20%.
UPDATE Products
SET
	Price = Price * 1.2,
    CategoryID=8
WHERE
	Price <= 10
    
-- 3. Удалить поставщиков из USA и Germany.
DELETE FROM Suppliers
WHERE
	Country IN ('USA', 'Germany')
    
-- 4. Добавить два поставщика из Spain с произвольными номерами телефонов.
INSERT INTO Suppliers (SupplierName, Country, Phone)
VALUES ('Name1','Spain', '(98) 000 90 89'),
	   ('Name2','Spain', '(98) 000 70 89')
	
-- 5. Вывести все товары до 20 EUR из категорий 3 и 6 по убыванию цены.
SELECT 
		ProductName,
        Price,
        CategoryID 
FROM Products
WHERE
		Price <= 20
    AND
    CategoryID IN (3, 6)

ORDER BY Price DESC

-- 6. Вывести три самых дорогих товара до 200 EUR.
SELECT *
FROM Products
WHERE Price <= 200 
ORDER BY Price DESC
LIMIT 3
