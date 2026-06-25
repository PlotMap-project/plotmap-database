CREATE TABLE generation_jobs (
                                 id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                 project_id UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
                                 chapter_id UUID REFERENCES project_chapters(id) ON DELETE SET NULL,
                                 mode generation_mode NOT NULL,
                                 status job_status NOT NULL DEFAULT 'PENDING',
                                 error_message TEXT,
                                 created_at TIMESTAMP NOT NULL DEFAULT now(),
                                 updated_at TIMESTAMP NOT NULL DEFAULT now(),
                                 completed_at TIMESTAMP
);

CREATE INDEX idx_generation_jobs_project ON generation_jobs(project_id);
CREATE INDEX idx_generation_jobs_status ON generation_jobs(status);
CREATE INDEX idx_generation_jobs_chapter ON generation_jobs(chapter_id);
