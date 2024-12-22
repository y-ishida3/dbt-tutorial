{% snapshot actor_snapshot %}

{{
    config(
        target_database='dvdrental',
        target_schema='snapshots',
        unique_key='actor_id',
        strategy='timestamp',
        updated_at='last_update',
    )
}}

    select * from {{ source('dvdrental', 'actor') }}

{% endsnapshot %}
