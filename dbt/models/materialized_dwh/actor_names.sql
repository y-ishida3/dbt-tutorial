{{
    config(
        materialized='incremental'
    )
}}

select
    a.actor_id
    , {{ get_full_name('first_name', 'last_name') }} as full_name
from
    {{ source('dvdrental', 'actor') }} as a

{% if is_incremental() %}

    where a.actor_id not in (select an.actor_id from {{ this }} as an)

{% endif %}
