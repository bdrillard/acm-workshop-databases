INSERT INTO workshop.widgets (id, name, price)
    VALUES (1, "Bar", 3.50), (2, "Baz", 3.14);

SELECT name, price FROM workshop.widgets
    WHERE price < 5.00;
