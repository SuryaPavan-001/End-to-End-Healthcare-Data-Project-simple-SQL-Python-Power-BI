use healthcaredb;

--  How many appointments were completed, cancelled, or pending?

select status, count(*) as total_appointments
from appointments
group by status;