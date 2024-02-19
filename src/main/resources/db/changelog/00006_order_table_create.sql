CREATE TABLE orders (
    id BIGINT PRIMARY KEY,
    moment TIMESTAMP,
    customer_id serial,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES app_user(id)
);


CREATE TABLE order_items (
    order_id BIGINT,
    product_id INT,
    quantity INT,
    price REAL,
    PRIMARY KEY (order_id, product_id),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES orders(id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product(id)
);

