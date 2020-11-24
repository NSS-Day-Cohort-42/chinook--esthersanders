SELECT i.Total,
c.FirstName || ' ' || c.LastName as CustomerName,
i.InvoiceId,
i.InvoiceDate,
i.BillingCountry,
e.FirstName || ' ' || e.LastName as EmployeeName
FROM Invoice i
    JOIN Customer c on c.CustomerId = i.CustomerId
    join Employee e on e.EmployeeId = c.SupportRepId
