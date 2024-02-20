CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    moment TIMESTAMP,
    customer_id INT,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES app_user(id)
);


CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    price REAL,
    PRIMARY KEY (order_id, product_id),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES orders(id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product(id)
);

