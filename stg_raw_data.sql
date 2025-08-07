with source as (
    select * from itsm_data
),

renamed as (
    select
        inc_number as incident_id,
        inc_business_service as business_service,
        inc_category as category,
        inc_priority as priority,
        inc_sla_due as sla_due,
        inc_sys_created_on as created_on,
        inc_resolved_at as resolved_at,
        inc_assigned_to as assigned_to,
        inc_state as state,
        inc_cmdb_ci as cmdb_ci,
        inc_caller_id as caller_id,
        inc_short_description as short_description,
        inc_assignment_group as assignment_group,
        inc_close_code as close_code,
        inc_close_notes as close_notes
    from source
)

select * from renamed