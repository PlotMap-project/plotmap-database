CREATE TABLE user_tags (
                           id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                           name VARCHAR(255) NOT NULL,
                           color VARCHAR(255),
                           created_at TIMESTAMP NOT NULL DEFAULT now()
);

CREATE INDEX idx_user_tags_name ON user_tags(name);
