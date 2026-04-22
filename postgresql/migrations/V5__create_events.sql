CREATE TABLE events (
                        id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                        title VARCHAR(255) NOT NULL,
                        description TEXT DEFAULT '',
                        suggested_system_role event_system_role,
                        impact_level INTEGER NOT NULL DEFAULT 5,
                        status event_status NOT NULL DEFAULT 'regular',
                        user_notes TEXT DEFAULT '',
                        level INTEGER DEFAULT 0,
                        order_in_level INTEGER DEFAULT 0,
                        custom_position_x DOUBLE PRECISION,
                        custom_position_y DOUBLE PRECISION,
                        color VARCHAR(255),
                        source event_source NOT NULL DEFAULT 'user_created',
                        text_hash VARCHAR(255),
                        created_at TIMESTAMP NOT NULL DEFAULT now(),
                        updated_at TIMESTAMP NOT NULL DEFAULT now()
);

CREATE INDEX idx_events_title ON events(title);
CREATE INDEX idx_events_status ON events(status);
CREATE INDEX idx_events_level ON events(level);
CREATE INDEX idx_events_text_hash ON events(text_hash);
