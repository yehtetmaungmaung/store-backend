CREATE TABLE IF NOT EXISTS product_images(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    type VARCHAR(255) NOT NULL,
    path VARCHAR(255) NOT NULL,
    product_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now(),
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE
);

INSERT INTO product_images(name, type, path, product_id) VALUES('lebelage-tomato-essence-mask.jpeg', 'image/jpeg', '/personal/medical-store/backend/uploads/product/3/lebelage-tomato-essence-mask.jpeg', 3);
INSERT INTO product_images(name, type, path, product_id) VALUES('garnier-bright-complete-facial-cleanser.jpeg', 'image/jpeg', '/personal/medical-store/backend/uploads/product/1/garnier-bright-complete-facial-cleanser.jpeg', 1);
INSERT INTO product_images(name, type, path, product_id) VALUES('simple-hydrating-light-moisturizer.jpeg', 'image/jpeg', '/personal/medical-store/backend/uploads/product/2/simple-hydrating-light-moisturizer.jpeg', 2);
