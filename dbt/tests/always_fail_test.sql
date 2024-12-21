SELECT an.actor_id
FROM
    {{ ref('actor_names') }} AS an
WHERE
    TRUE
