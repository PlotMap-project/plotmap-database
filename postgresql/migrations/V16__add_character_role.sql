CREATE TYPE character_role AS ENUM (
    'PROTAGONIST',
    'ANTAGONIST',
    'MAJOR',
    'SUPPORTING',
    'EPISODIC'
);

ALTER TABLE characters
    ADD COLUMN role character_role NOT NULL DEFAULT 'SUPPORTING';
