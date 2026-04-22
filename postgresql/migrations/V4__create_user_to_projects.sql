CREATE TABLE user_to_projects (
                                  id_user UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                  id_project UUID NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
                                  PRIMARY KEY (id_user, id_project)
);

CREATE INDEX idx_user_to_projects_user ON user_to_projects(id_user);
CREATE INDEX idx_user_to_projects_project ON user_to_projects(id_project);
