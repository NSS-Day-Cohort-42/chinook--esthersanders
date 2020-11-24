
SELECT MAX(TotalPurchased), TrackName
FROM(SELECT t.Name as TrackName, t.TrackId, COUNT(InvoiceLineId) as TotalPurchased
    FROM Track t
    JOIN InvoiceLine ON InvoiceLine.TrackId = t.TrackId
    JOIN invoice i ON InvoiceLine.InvoiceId = i.InvoiceId
    WHERE i.InvoiceDate LIKE '2013%'
    )

;