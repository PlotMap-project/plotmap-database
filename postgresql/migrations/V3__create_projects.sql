CREATE TABLE projects (
                          id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                          title VARCHAR(255) NOT NULL,
                          type project_type NOT NULL DEFAULT 'MANUAL',
                          description TEXT DEFAULT '',
                          created_at TIMESTAMP NOT NULL DEFAULT now(),
                          updated_at TIMESTAMP NOT NULL DEFAULT now()
);

CREATE INDEX idx_projects_title ON projects(title);
