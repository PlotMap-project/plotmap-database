CREATE TABLE event_to_tags (
                               id_project UUID NOT NULL,
                               id_event UUID NOT NULL,
                               id_tag UUID NOT NULL,
                               PRIMARY KEY (id_project, id_event, id_tag),

                               CONSTRAINT fk_event_to_tags_project_event
                                   FOREIGN KEY (id_project, id_event)
                                       REFERENCES events(project_id, id)
                                       ON DELETE CASCADE,

                               CONSTRAINT fk_event_to_tags_project_tag
                                   FOREIGN KEY (id_project, id_tag)
                                       REFERENCES user_tags(project_id, id)
                                       ON DELETE CASCADE
);

CREATE INDEX idx_event_to_tags_project ON event_to_tags(id_project);
CREATE INDEX idx_event_to_tags_event ON event_to_tags(id_event);
CREATE INDEX idx_event_to_tags_tag ON event_to_tags(id_tag);
