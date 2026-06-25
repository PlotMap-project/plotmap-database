CREATE TABLE user_tags (
                           id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                           project_id UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
                           name VARCHAR(255) NOT NULL,
                           color VARCHAR(7),
                           created_at TIMESTAMP NOT NULL DEFAULT now(),

                           CONSTRAINT uq_tag_name_per_project UNIQUE (project_id, name),
                           CONSTRAINT uq_user_tags_project_id_id UNIQUE (project_id, id)
);

CREATE INDEX idx_user_tags_project ON user_tags(project_id);
