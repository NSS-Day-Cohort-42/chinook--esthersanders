SELECT *, COUNT(InvoiceLine.InvoiceLineId) as InvoiceLineCount
FROM Invoice
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY InvoiceLine.InvoiceId
;