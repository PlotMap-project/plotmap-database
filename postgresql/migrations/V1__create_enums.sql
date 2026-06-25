CREATE TYPE event_status AS ENUM (
    'PLANNED',
    'IMPLEMENTED',
    'DISCARDED'
);

CREATE TYPE event_source AS ENUM (
    'USER_CREATED',
    'AI_GENERATED'
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
    'MANUAL',
    'AI_GENERATED'
);

CREATE TYPE connection_type AS ENUM (
    'CAUSAL',
    'TEMPORAL',
    'PARALLEL'
);

CREATE TYPE generation_mode AS ENUM (
    'INITIAL_GENERATION',
    'APPEND_CHAPTER'
);

CREATE TYPE job_status AS ENUM (
    'PENDING',
    'PROCESSING',
    'COMPLETED',
    'FAILED'
);
