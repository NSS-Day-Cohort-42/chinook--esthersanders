SELECT MAX(TotalSales), EmployeeName

FROM (SELECT SUM(i.Total) as TotalSales, e.EmployeeId, e.FirstName || ' ' || e.LastName as EmployeeName
    FROM Invoice i
        JOIN customer c on c.CustomerId = i.CustomerId
        JOIN employee e on e.EmployeeId = c.SupportRepId
    WHERE e.Title = 'Sales Support Agent' AND i.InvoiceDate LIKE '2009%'
    GROUP BY EmployeeName);


