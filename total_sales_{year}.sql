SELECT SUM(i.total) as YearTotal,
i.InvoiceDate
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%' OR i.InvoiceDate LIKE '2011%'
GROUP BY i.InvoiceDate;

SELECT SUM(i.total) as YearTotal,
i.InvoiceDate
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2011-12-31 24:60:60'
GROUP BY 
    CASE
        WHEN i.InvoiceDate LIKE '2009%' 
        OR i.InvoiceDate LIKE '2011%'
    END;




SELECT SUM(i.total) as YearTotal,
CONVERT(i.InvoiceDate, VarChar(4)) AS Year
FROM Invoice i
WHERE i.Year LIKE '2009%' OR i.Year LIKE '2010%' OR i.Year LIKE '2011%'
GROUP BY i.InvoiceDate;

SELECT SUM(i.total) as YearTotal,
EXTRACT(YEAR from i.InvoiceDate) AS Year
FROM Invoice i
WHERE i.Year LIKE '2009' OR i.Year LIKE '2010' OR i.Year LIKE '2011'
GROUP BY i.InvoiceDate;

SELECT SUM(i.total) as YearTotal,
    YEAR(i.InvoiceDate) AS Year
FROM Invoice i
WHERE i.Year LIKE '2009' OR i.Year LIKE '2010' OR i.Year LIKE '2011'
GROUP BY i.InvoiceDate;

SELECT SUM(i.total) as YearTotal,
i.InvoiceDate
FROM Invoice i
WHERE YEAR(i.InvoiceDate) = '2009' OR YEAR(i.InvoiceDate) = '2010' OR YEAR(i.InvoiceDate) = '2011' 
GROUP BY i.InvoiceDate;

SELECT SUM(i.total) as YearTotal,
strftime('%Y', i.InvoiceDate) as Year
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%' OR i.InvoiceDate LIKE '2011%' 
GROUP BY Year;


