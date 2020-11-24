SELECT i.InvoiceId, i.TrackId, t.Name
FROM InvoiceLine i 
JOIN Track t ON i.TrackId = t.TrackId;

