CREATE TABLE IF NOT EXISTS workshop.users (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT
    , username VARCHAR(32) NOT NULL
    , first VARCHAR(32)
    , last VARCHAR(32)
    , email VARCHAR(64)
    , password BINARY(64) NOT NULL
    ,

    PRIMARY KEY(id)
    , CONSTRAINT UNIQUE(username)
    , CONSTRAINT UNIQUE(email)
);
