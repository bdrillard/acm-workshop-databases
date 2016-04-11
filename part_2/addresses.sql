CREATE TABLE workshop.addresses (
    id INTEGER NOT NULL
    , address TEXT
    , customer_id INTEGER NOT NULL
    ,

    FOREIGN KEY(customer_id)
        REFERENCES workshop.customers(id)
);
