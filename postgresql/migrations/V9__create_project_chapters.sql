CREATE TABLE project_chapters (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    project_id UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
    chapter_order INTEGER NOT NULL,
    title VARCHAR(255),
    text TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    updated_at TIMESTAMP NOT NULL DEFAULT now(),

    CONSTRAINT uq_chapter_order_per_project UNIQUE (project_id, chapter_order)
);

CREATE INDEX idx_chapters_project ON project_chapters(project_id);
