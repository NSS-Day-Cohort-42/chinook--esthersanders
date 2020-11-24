SELECT t.Name as TrackName, t.TrackId, SUM(InvoiceLine.Quantity) as TotalPurchased
    FROM Track t
    JOIN InvoiceLine ON InvoiceLine.TrackId = t.TrackId
    GROUP BY TrackName
    ORDER BY TotalPurchased DESC
    LIMIT 5
;