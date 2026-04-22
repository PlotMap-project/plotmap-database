CREATE TABLE event_to_tags (
                               id_event UUID NOT NULL REFERENCES events(id) ON DELETE CASCADE,
                               id_tag UUID NOT NULL REFERENCES user_tags(id) ON DELETE CASCADE,
                               PRIMARY KEY (id_event, id_tag)
);

CREATE INDEX idx_event_to_tags_event ON event_to_tags(id_event);
CREATE INDEX idx_event_to_tags_tag ON event_to_tags(id_tag);
