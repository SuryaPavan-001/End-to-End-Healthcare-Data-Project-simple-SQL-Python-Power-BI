-- Which specialization earned the highest total fees?

use healthcaredb;

SELECT 
   
    d.specialization,
    SUM(b.total_fee) AS total_revenue
FROM 
    Doctor d
JOIN 
    Appointments a ON d.doctor_id = a.doctor_id
JOIN 
    Billing b ON a.appointments_id = b.appointments_id
WHERE 
    b.payment_status = 'Paid'
GROUP BY 
    d.specialization
ORDER BY 
    total_revenue DESC
limit 1;