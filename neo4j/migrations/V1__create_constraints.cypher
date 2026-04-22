CREATE CONSTRAINT event_id_unique IF NOT EXISTS
FOR (e:Event) REQUIRE e.id IS UNIQUE;

CREATE CONSTRAINT character_id_unique IF NOT EXISTS
FOR (c:Character) REQUIRE c.id IS UNIQUE;

CREATE CONSTRAINT story_arc_id_unique IF NOT EXISTS
FOR (s:StoryArc) REQUIRE s.id IS UNIQUE;
