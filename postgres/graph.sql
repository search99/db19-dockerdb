CREATE TABLE vertices (
      vertex_id  INTEGER PRIMARY KEY,
      properties JSON
    
);

CREATE TABLE edges (
      edge_id     INTEGER PRIMARY KEY,
      tail_vertex INTEGER REFERENCES vertices (vertex_id),
      head_vertex INTEGER REFERENCES vertices (vertex_id),
      label       TEXT,
      properties  JSON
    
);

CREATE INDEX edges_tails ON edges (tail_vertex);
CREATE INDEX edges_heads ON edges (head_vertex);
