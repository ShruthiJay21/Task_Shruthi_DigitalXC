with staged as (
    select * from "itsm_dashboard"."analytics"."stg_raw_data"
)

select
    incident_id,
    upper(short_description) as short_description_caps,
    state,
    created_on
from staged
where state = 'Closed'