CREATE TABLE event_to_characters (
                                     id_project UUID NOT NULL,
                                     id_event UUID NOT NULL,
                                     id_character UUID NOT NULL,
                                     PRIMARY KEY (id_project, id_event, id_character),

                                     CONSTRAINT fk_event_to_characters_project_event
                                         FOREIGN KEY (id_project, id_event)
                                             REFERENCES events(project_id, id)
                                             ON DELETE CASCADE,

                                     CONSTRAINT fk_event_to_characters_project_character
                                         FOREIGN KEY (id_project, id_character)
                                             REFERENCES characters(project_id, id)
                                             ON DELETE CASCADE
);

CREATE INDEX idx_event_to_characters_project ON event_to_characters(id_project);
CREATE INDEX idx_event_to_characters_event ON event_to_characters(id_event);
CREATE INDEX idx_event_to_characters_character ON event_to_characters(id_character);
