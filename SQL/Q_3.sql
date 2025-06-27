-- Which city has the most patients?

use healthcaredb;

select city, count(*) as Total_patient
from patients
group by city
order by Total_patient desc;