CREATE TABLE IF NOT EXISTS category
(
    id         serial primary key  not null,
    name       varchar(255)        not null,
    slug       varchar(255) unique not null,
    parent_id  int,
    created_at timestamp default now(),
    updated_at timestamp default now()
);

INSERT INTO category(id, name, slug) VALUES (1, 'Health & Beauty', 'healthandbeauty');
INSERT INTO category(id, name, slug, parent_id) VALUES (2, 'Skin Care', 'skincare', 1);
INSERT INTO category(id, name, slug, parent_id) VALUES (3, 'Facial Cleansers', 'facial-cleansers', 2);
INSERT INTO category(id, name, slug, parent_id) VALUES (4, 'Moisturizers', 'moisturizers', 2);
INSERT INTO category(id, name, slug, parent_id) VALUES (5, 'Face Mask & Packs', 'facemasks', 2);

select setval('category_id_seq', (select max(id) from category));