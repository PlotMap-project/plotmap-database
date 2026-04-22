CREATE INDEX event_project_idx IF NOT EXISTS
FOR (e:Event) ON (e.projectId);

CREATE INDEX character_project_idx IF NOT EXISTS
FOR (c:Character) ON (c.projectId);

CREATE INDEX story_arc_project_idx IF NOT EXISTS
FOR (s:StoryArc) ON (s.projectId);
