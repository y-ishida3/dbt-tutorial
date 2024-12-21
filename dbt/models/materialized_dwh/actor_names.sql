{{
    config(
        materialized='incremental'
    )
}}

select
    a.actor_id
    , concat(a.first_name, ' ', a.last_name) as full_name
from
    dvdrental.public.actor as a

{% if is_incremental() %}

    where a.actor_id not in (select an.actor_id from {{ this }} as an)

{% endif %}
