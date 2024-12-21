{{
    config(
        materialized='incremental'
    )
}}

SELECT
    a.actor_id
    , CONCAT(a.first_name, ' ', a.last_name) AS full_name
FROM
    dvdrental.public.actor AS a

{% if is_incremental() %}

    WHERE a.actor_id NOT IN (SELECT an.actor_id FROM {{ this }} AS an)

{% endif %}
