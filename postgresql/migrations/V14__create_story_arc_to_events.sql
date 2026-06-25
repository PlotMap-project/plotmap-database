CREATE TABLE story_arc_to_events (
                                     id_project UUID NOT NULL,
                                     id_arc UUID NOT NULL,
                                     id_event UUID NOT NULL,
                                     order_in_arc INTEGER NOT NULL DEFAULT 0,
                                     PRIMARY KEY (id_project, id_arc, id_event),

                                     CONSTRAINT fk_story_arc_to_events_project_arc
                                         FOREIGN KEY (id_project, id_arc)
                                             REFERENCES story_arcs(project_id, id)
                                             ON DELETE CASCADE,

                                     CONSTRAINT fk_story_arc_to_events_project_event
                                         FOREIGN KEY (id_project, id_event)
                                             REFERENCES events(project_id, id)
                                             ON DELETE CASCADE
);

CREATE INDEX idx_story_arc_to_events_project ON story_arc_to_events(id_project);
CREATE INDEX idx_story_arc_to_events_arc ON story_arc_to_events(id_arc);
CREATE INDEX idx_story_arc_to_events_event ON story_arc_to_events(id_event);
