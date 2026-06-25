CREATE TABLE story_arcs (
                            id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                            project_id UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
                            title VARCHAR(255) NOT NULL,
                            description TEXT NOT NULL DEFAULT '',
                            color VARCHAR(7),
                            created_at TIMESTAMP NOT NULL DEFAULT now(),
                            updated_at TIMESTAMP NOT NULL DEFAULT now(),

                            CONSTRAINT uq_story_arc_title_per_project UNIQUE (project_id, title),
                            CONSTRAINT uq_story_arcs_project_id_id UNIQUE (project_id, id)
);

CREATE INDEX idx_story_arcs_project ON story_arcs(project_id);
