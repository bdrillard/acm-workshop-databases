CREATE TABLE workshop.scientist_org (
    id INTEGER NOT NULL
    , scientist_id INTEGER NOT NULL
    , org_id INTEGER NOT NULL
    ,

    PRIMARY KEY(id)
    ,

    FOREIGN KEY(scientist_id)
        REFERENCES workshop.scientists(id)
        ON UPDATE CASCADE ON DELETE CASCADE
    ,
    FOREIGN KEY(org_id)
        REFERENCES workshop.orgs(id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO workshop.scientists (id, name)
    VALUES (1, "Ada"), (2, "Alan"), (3, "Dijkstra"), (4, "McCarthy");

INSERT INTO workshop.orgs (id, name)
    VALUES (1, "ACM"), (2, "IEEE");

INSERT INTO workshop.scientist_org (id, scientist_id, org_id)
    VALUES (1, 1, 1), (2, 2, 1), (3, 2, 1), (4, 3, 1), (5, 3, 2);
