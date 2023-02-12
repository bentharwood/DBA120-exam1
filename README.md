# DBA120-exam1
## ex1
* this exercise created a new row in the table.   
`INSERT INTO terms (terms_id, terms_description, terms_due_days) VALUES (6, "Net due 120 days", 120)`
![resutls ex4](https://github.com/bentharwood/DBA120-exam1/blob/main/ch5_ex1_results.png)
##  ex2
* this exercise updated the row we added in exercise 1.  
`UPDATE terms SET terms_description = "Net due 125 days", terms_due_days = 125 WHERE terms_id = 6`
![results ex2](https://github.com/bentharwood/DBA120-exam1/blob/main/ch5_ex2_resutls.png)
##  ex3
* this exercise deleted the row we added.  
`DELETE FROM terms WHERE terms_id = 6`
![results ex3](https://github.com/bentharwood/DBA120-exam1/blob/main/ch5_ex3_results.png)
##  ex4
* this exercise inserted data into a row  
`INSERT INTO invoices VALUES (DEFAULT, 32, 'AX-014-027', '2018-08-01', 434.58, 0.00, 0.00, 2, '2018-08-31', NULL)`
![results 4](https://github.com/bentharwood/DBA120-exam1/blob/main/ch5_ex4_results.png)
##  ex5
* this exercise added a line to a table without a column list.  
`INSERT INTO invoice_line_items (invoice_id, invoice_sequence, account_number, line_item_amount, line_item_description) VALUES (115, 1, 160, 180.23, 'Hard drive'), (115, 2, 527, 254.35, 'Exchange server update') `
![results 5](https://github.com/bentharwood/DBA120-exam1/blob/main/ch5_ex5_results.png)
##  ex6
* in this exercise we used multiplication to set a field in relation to another field  
* `UPDATE invoices SET credit_total = invoice_total * 0.1, payment_total = invoice_total - credit_total WHERE invoice_id = 115`
![results 6](https://github.com/bentharwood/DBA120-exam1/blob/main/ch5_ex6_results.png)
##  ex7
* in this exercise we updated a field using a specific id  
`UPDATE vendors SET default_account_number = 403 WHERE vendor_id = 44`
![results 7](https://github.com/bentharwood/DBA120-exam1/blob/main/ch5_ex7_results.png)
##  ex8
* in this exercise we updated the data in one table while referencing another  
`UPDATE invoices SET terms_id = 2 WHERE vendor_id in (SELECT vendor_id FROM vendors WHERE default_terms_id = 2);`
![results 8](https://github.com/bentharwood/DBA120-exam1/blob/main/ch5_ex8_results.png)
##  ex9
* in this exercise we deleted the rows we added in exercise 5  
`DELETE FROM invoice_line_items WHERE invoice_id = 115;
DELETE FROM invoices WHERE invoice_id = 115`
![results 9](https://github.com/bentharwood/DBA120-exam1/blob/5e5769b81ffceade05b5556d9d8f5a337e086cde/ch5_ex9_invoice_line_items_resutls.png)
![results 9-2](https://github.com/bentharwood/DBA120-exam1/blob/5e5769b81ffceade05b5556d9d8f5a337e086cde/ch5_ex9_invoice_results.png)
