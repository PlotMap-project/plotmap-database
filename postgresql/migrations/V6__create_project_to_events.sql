CREATE TABLE project_to_events (
                                   id_project UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
                                   id_event UUID NOT NULL REFERENCES events(id) ON DELETE CASCADE,
                                   PRIMARY KEY (id_project, id_event)
);

CREATE INDEX idx_project_to_events_project ON project_to_events(id_project);
CREATE INDEX idx_project_to_events_event ON project_to_events(id_event);
