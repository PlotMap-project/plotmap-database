CREATE TYPE event_status AS ENUM (
    'planned',
    'implemented',
    'discarded'
);

CREATE TYPE event_source AS ENUM (
    'user_created',
    'ai_generated',
    'ai_updated'
);

CREATE TYPE event_system_role AS ENUM (
    'inciting_incident',
    'climax',
    'rising_action',
    'regular',
    'resolution',
    'plot_twist',
    'falling_action'
);

CREATE TYPE project_type AS ENUM (
    'user_created',
    'ai_generated'
);
