CREATE TABLE characters (
                            id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                            project_id UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
                            name VARCHAR(255) NOT NULL,
                            description TEXT NOT NULL DEFAULT '',
                            color VARCHAR(7),
                            created_at TIMESTAMP NOT NULL DEFAULT now(),
                            updated_at TIMESTAMP NOT NULL DEFAULT now(),

                            CONSTRAINT uq_character_name_per_project UNIQUE (project_id, name),
                            CONSTRAINT uq_characters_project_id_id UNIQUE (project_id, id)
);

CREATE INDEX idx_characters_project ON characters(project_id);
