CREATE TABLE IF NOT EXISTS workshop.tag_post (
    id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT
    , tag_id INTEGER UNSIGNED NOT NULL
    , post_id INTEGER UNSIGNED NOT NULL
    ,

    PRIMARY KEY(id)
    , INDEX(post_id)
    ,

    FOREIGN KEY(tag_id)
        REFERENCES workshop.tags(id)
        ON UPDATE CASCADE ON DELETE CASCADE
    , FOREIGN KEY(post_id)
        REFERENCES workshop.posts(id)
        ON UPDATE CASCADE ON DELETE CASCADE
);
