    UPDATE invoices SET credit_total = invoice_total * 0.1, payment_total = invoice_total - credit_total WHERE invoice_id = 120
