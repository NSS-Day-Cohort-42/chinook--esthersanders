SELECT *
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2011-12-31 24:60:60';

SELECT COUNT(i.InvoiceId) AS total
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%' OR i.InvoiceDate LIKE '2011%';
