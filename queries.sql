-- write your queries here
SELECT * 
FROM owners o 
FULL JOIN vehicles v ON o.id = v.owner_id;

SELECT first_name, last_name, COUNT(*) AS number_of_vehicles 
FROM owners o 
JOIN vehicles v ON o.id = v.owner_id 
GROUP BY o.id 
ORDER BY number_of_vehicles;

SELECT first_name, last_name, AVG(price) AS average_price, COUNT(*) AS number_of_vehicles 
FROM owners o 
JOIN vehicles v ON o.id = v.owner_id 
GROUP BY o.id 
HAVING AVG(price) > 10000  
ORDER BY number_of_vehicles DESC;




