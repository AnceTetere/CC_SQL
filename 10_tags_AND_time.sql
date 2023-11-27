SELECT product_name, company, state_name, timely_response
FROM Consumer_complaints
WHERE state_name = 'NY' AND timely_response = 'Yes' AND tags = 'Older American' 