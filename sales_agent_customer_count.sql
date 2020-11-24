SELECT COUNT(c.CustomerId) as TotalCustomers, e.EmployeeId, e.FirstName || ' ' || e.LastName as EmployeeName
    FROM Employee e
        JOIN customer c on e.EmployeeId = c.SupportRepId
    WHERE e.Title = 'Sales Support Agent'
    GROUP BY EmployeeName;