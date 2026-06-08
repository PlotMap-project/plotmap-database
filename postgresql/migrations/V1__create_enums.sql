CREATE TYPE event_status AS ENUM (
    'PLANNED',
    'IMPLEMENTED',
    'DISCARDED'
);

CREATE TYPE event_source AS ENUM (
    'USER_CREATED',
    'AI_GENERATED',
    'AI_UPDATED'
);

CREATE TYPE event_system_role AS ENUM (
    'INCITING_INCIDENT',
    'CLIMAX',
    'RISING_ACTION',
    'REGULAR',
    'RESOLUTION',
    'PLOT_TWIST',
    'FALLING_ACTION'
);

CREATE TYPE project_type AS ENUM (
    'USER_CREATED',
    'AI_GENERATED'
);
