CREATE TABLE event_edges (
                             id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                             id_project UUID NOT NULL,
                             source_event_id UUID NOT NULL,
                             target_event_id UUID NOT NULL,
                             type connection_type NOT NULL DEFAULT 'CAUSAL',
                             description TEXT NOT NULL DEFAULT '',
                             created_at TIMESTAMP NOT NULL DEFAULT now(),
                             updated_at TIMESTAMP NOT NULL DEFAULT now(),

                             CONSTRAINT chk_event_edges_no_self_loop CHECK (source_event_id <> target_event_id),

                             CONSTRAINT fk_event_edges_from
                                 FOREIGN KEY (id_project, source_event_id)
                                     REFERENCES events(project_id, id)
                                     ON DELETE CASCADE,

                             CONSTRAINT fk_event_edges_to
                                 FOREIGN KEY (id_project, target_event_id)
                                     REFERENCES events(project_id, id)
                                     ON DELETE CASCADE
);

CREATE INDEX idx_event_edges_project ON event_edges(id_project);
CREATE INDEX idx_event_edges_source ON event_edges(source_event_id);
CREATE INDEX idx_event_edges_target ON event_edges(target_event_id);
