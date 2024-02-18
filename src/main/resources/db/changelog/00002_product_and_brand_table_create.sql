CREATE TABLE IF NOT EXISTS brand
(
    id         serial PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    created_at timestamp default now(),
    updated_at timestamp default now()
);

INSERT INTO brand (id,name) VALUES (1,'Garnier');
INSERT INTO brand (id,name) VALUES (2,'Lebelage');
INSERT INTO brand (id,name) VALUES (3,'Fraijour');
INSERT INTO brand (id,name) VALUES (4,'Simple');

SELECT setval('brand_id_seq', (SELECT MAX(id) FROM brand));

CREATE TABLE IF NOT EXISTS product
(
    id             serial PRIMARY KEY,
    name           VARCHAR(255)  NOT NULL,
    description    VARCHAR(1000) NOT NULL,
    brand_id       INT           NOT NULL,
    category_id    INT           NOT NULL,
    price          REAL         NOT NULL,
    count_in_stock INT           NOT NULL,
    rating         REAL          NOT NULL,
    num_reviews    INT           NOT NULL,
    CONSTRAINT fk_brand
        FOREIGN KEY (brand_id)
            REFERENCES brand (id)
);

INSERT INTO product (id,name,description,brand_id,category_id,price,count_in_stock,rating,num_reviews) VALUES (1,'Garnier Bright Complete Brightening Foam 100ML','A gentle, easy to rinse foam with the power of Pure Lemon Extract to intensively cleanse+D17 & clear dullness.',1,3,11900,10,4.5,12);
INSERT INTO product (id,name,description,brand_id,category_id,price,count_in_stock,rating,num_reviews) VALUES (2,'Simple Hydrating light Moisturizer 125ml','A vitamin-rich,  replenishing moisturizer to helps smooth and soften your skin. Simple moisturizing cream enriched with vitamins that instantly double skin hydration',4,4,14500,20,4.5,12);
INSERT INTO product (id,name,description,brand_id,category_id,price,count_in_stock,rating,num_reviews) VALUES (3,'Lebelage Tomato Essence Mask','Charcoal effectively absorbs sebum, promotes deep cleansing of skin pores, exfoliates dead cells of the epidermis, activating the processes of cell renewal. The mask is richly saturated with essence, which has practically no scent. The mask contains no alcohol',2,5,800,40,4.5,12);

SELECT setval('product_id_seq', (SELECT MAX(id) FROM product));