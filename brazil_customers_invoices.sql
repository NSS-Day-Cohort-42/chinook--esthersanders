SELECT *
FROM Invoice i
JOIN Customer c on i.customerId = c.customerId
WHERE c.Country = 'Brazil';