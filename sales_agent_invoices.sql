SELECT e.FirstName || e.LastName as EmployeeName,
    i.InvoiceId,
    i.InvoiceDate,
    i.Total
FROM Invoice i 
JOIN Customer c on i.CustomerId = c.CustomerId
JOIN Employee e on c.SupportRepId = e.EmployeeId
WHERE e.title LIKE '%Sales%Agent%';