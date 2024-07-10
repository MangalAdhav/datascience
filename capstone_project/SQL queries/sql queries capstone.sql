select * from table1;
select * from table2;
select * from table3;
-- -- Q.1   1- Retrieve properties with balconies, sorted by the number of bedrooms in descending order -- --
SELECT * FROM Table1 WHERE no_of_Balcony > 0 ORDER BY no_of_Beds DESC;
-- Q.2   2- Find the top 5 cities with the highest average number of bedrooms per property. -- --
select City, AVG(no_of_Beds) AS Average_Bedrooms FROM Table1 GROUP BY City ORDER BY Average_Bedrooms DESC LIMIT 5;
-- -- Q.3   3- Count the number of properties in each city.
SELECT City, COUNT(*) AS Property_Count
FROM Table1 GROUP BY City;
-- Q.4   4- Retrieve all properties with at least 3 bedrooms and 2 bathrooms.
SELECT * FROM Table1 WHERE no_of_Beds >= 3 AND no_of_Bathrooms >= 2;
-- Q.5   5- Find properties in a specific state with a certain landmark. (take state and landmark on your own ).
SELECT * FROM Table1 WHERE State_code = '22' AND Landmarks = 'Mumbai';
-- -- -- Table2 queries -- -- --
-- 1- Calculate the average price per square foot for properties built before 2010.
SELECT AVG(price_per_square_feet) AS Average_Price_Per_Square_Foot
FROM Table2
WHERE `year_built` > 2010;
-- --  2- Find the total number of properties on each floor.
SELECT floor, COUNT(*) AS Property_Count FROM Table2 GROUP BY floor;
-- -- 3- Retrieve properties with a carpet area greater than 1000 square feet and a status of 'Under Construction'.
SELECT * FROM Table2 WHERE Carpet_area > 1000 AND status = 'completed';
 -- -- 4- Calculate the average price per square foot for each transaction typeCarpet_areaCarpet_areaCarpet_area.
SELECT 
    Transaction_Type,
    AVG(price_per_square_feet) AS average_price_per_square_foot
FROM 
    Table2
GROUP BY 
    Transaction_Type;
-- -- 5- Find the properties with the highest price per square foot, sorted in descending order.
SELECT 
    carpet_area,
    Status,
    floor,
    transaction_type,
    year_built,
    price_per_square_feet
FROM 
table2
ORDER BY 
    price_per_square_feet DESC;

    
    









