SELECT MAX(TotalSales), Country
FROM (SELECT SUM(i.Total) as TotalSales, i.BillingCountry as Country
    FROM Invoice i 
    GROUP BY i.BillingCountry);