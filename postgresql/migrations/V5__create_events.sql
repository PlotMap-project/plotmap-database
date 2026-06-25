CREATE TABLE events (
                        id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                        project_id UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
                        title VARCHAR(255) NOT NULL,
                        description TEXT NOT NULL DEFAULT '',
                        suggested_system_role event_system_role,
                        impact_level INTEGER NOT NULL DEFAULT 5 CHECK (impact_level >= 1 AND impact_level <= 10),
                        status event_status NOT NULL DEFAULT 'PLANNED',
                        user_notes TEXT NOT NULL DEFAULT '',
                        level INTEGER NOT NULL DEFAULT 0,
                        order_in_level INTEGER NOT NULL DEFAULT 0,
                        custom_position_x DOUBLE PRECISION,
                        custom_position_y DOUBLE PRECISION,
                        color VARCHAR(7),
                        source event_source NOT NULL DEFAULT 'USER_CREATED',
                        source_context TEXT NOT NULL DEFAULT '',
                        created_at TIMESTAMP NOT NULL DEFAULT now(),
                        updated_at TIMESTAMP NOT NULL DEFAULT now(),

                        CONSTRAINT uq_events_project_id_id UNIQUE (project_id, id)
);

CREATE INDEX idx_events_project ON events(project_id);
CREATE INDEX idx_events_title ON events(title);
CREATE INDEX idx_events_status ON events(status);
CREATE INDEX idx_events_level ON events(level);
CREATE INDEX idx_events_source ON events(source);
