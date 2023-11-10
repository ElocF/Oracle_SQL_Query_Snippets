--Query to find duplicates

select 
client_number_id,
count(*)
from 
mta.mta_person_organization_vw
group by
client_number_id
having count(*) >1