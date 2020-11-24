SELECT COUNT(i.InvoiceId) as InvoiceTotal, i.BillingCountry
from Invoice i
GROUP BY i.BillingCountry;