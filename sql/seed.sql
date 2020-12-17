-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Jordan 4 Retro Bred', 'Classic schoenen', 350, 1, 4-5-19, 308497060, 1,'Jordan');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Jordan 1 Retro High Bred Toe', 'Mooie schoenen met veel hype', 600, 1, 24-2-18, 555088610, 2,'Jordan');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Jordan 11 Retro Playoffs Bred', 'Nice pattas', 300, 1, 14-12-19, 378037061, 3,'Jordan');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Jordan 1 Retro High Royal Toe', 'Clean schoenen', 330, 2, 9-5-20, 555088041, 2,'Jordan');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Jordan 1 Retro High Off White Blue', 'All time grail', 2000, 3, 23-6-18, 878236488, 2,'Jordan');

insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Yeezy 350 V2 Black Red', 'clown pattas', 280, 1, 5-12-20, 193758463, 4,'Yeezy');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Yeezy 350 V2 Zebra', 'Mooie schoenen', 300, 4, 25-2-17, 837201847, 4,'Yeezy');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Yeezy 350 V2 Cloud White', 'Past bij elk outje', 400, 5, 21-9-19, 264813640, 4,'Yeezy');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Yeezy 500 Stone', 'Confortabele schoenen', 350, 10, 23-11-19, 468274828, 5,'Yeezy');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Yeezy 700 Wave Runner', 'Chuncky schoenen die erg lekker lopen', 500, 11, 1-11-17, 264910364, 6,'Yeezy');

insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Nike Dunk Low Syracuse', 'Chuncky schoenen die erg lekker lopen', 450, 9, 14-3-20, 173947392, 7,'Nike');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Nike Dunk Low Kentucky', 'Chuncky schoenen die erg lekker lopen', 450, 3, 14-3-20, 273947135, 7,'Nike');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Nike Dunk Low Para', 'Chuncky schoenen die erg lekker lopen', 400, 8, 27-7-19, 926382618, 7,'Nike');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Nike Dunk High Doraemon', 'Chuncky schoenen die erg lekker lopen', 250, 6, 4-9-20, 179376333, 8,'Nike');
insert into products (name, description, price, colorway, release_date, code, silhouette, brand) values ('Nike Dunk High Spartan Green', 'Chuncky schoenen die erg lekker lopen', 200, 7, 18-9-20, 357894737, 8,'Nike');


insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (1, 'rood-zwart');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (2, 'blauw-zwart');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (3, 'blauw-wit');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (4, 'wit-zwart');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (5, 'wit');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (6, 'blauw-rood');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (7, 'groen-wit');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (8, 'roze-wit');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (9, 'rood-wit');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (10, 'stone');
insert into schoenkleur (schoenkleur_id, schoenkleur_name) values (11, 'grijs-wit');


insert into silhouette_type (silhouette_id, silhouette_name) values (1, 'Jordan 4');
insert into silhouette_type (silhouette_id, silhouette_name) values (2, 'Jordan 1');
insert into silhouette_type (silhouette_id, silhouette_name) values (3, 'Jordan 11');
insert into silhouette_type (silhouette_id, silhouette_name) values (4, 'Yeezy 350');
insert into silhouette_type (silhouette_id, silhouette_name) values (5, 'Yeezy 500');
insert into silhouette_type (silhouette_id, silhouette_name) values (6, 'Yeezy 700');
insert into silhouette_type (silhouette_id, silhouette_name) values (7, 'Nike Dunk Low');
insert into silhouette_type (silhouette_id, silhouette_name) values (8, 'Nike Dunk High');


insert into recomended (sneaker_id, andere_sneaker_id) values (1,7);
insert into recomended (sneaker_id, andere_sneaker_id) values (1,9);
insert into recomended (sneaker_id, andere_sneaker_id) values (1,13);
insert into recomended (sneaker_id, andere_sneaker_id) values (2,3);
insert into recomended (sneaker_id, andere_sneaker_id) values (2,8);
insert into recomended (sneaker_id, andere_sneaker_id) values (2,15);
insert into recomended (sneaker_id, andere_sneaker_id) values (3,2);
insert into recomended (sneaker_id, andere_sneaker_id) values (3,5);
insert into recomended (sneaker_id, andere_sneaker_id) values (3,12);
insert into recomended (sneaker_id, andere_sneaker_id) values (4,6);
insert into recomended (sneaker_id, andere_sneaker_id) values (4,10);
insert into recomended (sneaker_id, andere_sneaker_id) values (4,14);
insert into recomended (sneaker_id, andere_sneaker_id) values (5,3);
insert into recomended (sneaker_id, andere_sneaker_id) values (5,6);
insert into recomended (sneaker_id, andere_sneaker_id) values (5,11);
insert into recomended (sneaker_id, andere_sneaker_id) values (6,4);
insert into recomended (sneaker_id, andere_sneaker_id) values (6,5);
insert into recomended (sneaker_id, andere_sneaker_id) values (6,12);
insert into recomended (sneaker_id, andere_sneaker_id) values (7,1);
insert into recomended (sneaker_id, andere_sneaker_id) values (7,9);
insert into recomended (sneaker_id, andere_sneaker_id) values (7,11);
insert into recomended (sneaker_id, andere_sneaker_id) values (8,2);
insert into recomended (sneaker_id, andere_sneaker_id) values (8,13);
insert into recomended (sneaker_id, andere_sneaker_id) values (8,15);
insert into recomended (sneaker_id, andere_sneaker_id) values (9,1);
insert into recomended (sneaker_id, andere_sneaker_id) values (9,7);
insert into recomended (sneaker_id, andere_sneaker_id) values (9,10);
insert into recomended (sneaker_id, andere_sneaker_id) values (10,4);
insert into recomended (sneaker_id, andere_sneaker_id) values (10,9);
insert into recomended (sneaker_id, andere_sneaker_id) values (10,14);
insert into recomended (sneaker_id, andere_sneaker_id) values (11,5);
insert into recomended (sneaker_id, andere_sneaker_id) values (11,7);
insert into recomended (sneaker_id, andere_sneaker_id) values (11,15);
insert into recomended (sneaker_id, andere_sneaker_id) values (12,3);
insert into recomended (sneaker_id, andere_sneaker_id) values (12,6);
insert into recomended (sneaker_id, andere_sneaker_id) values (12,14);
insert into recomended (sneaker_id, andere_sneaker_id) values (13,1);
insert into recomended (sneaker_id, andere_sneaker_id) values (13,8);
insert into recomended (sneaker_id, andere_sneaker_id) values (13,14);
insert into recomended (sneaker_id, andere_sneaker_id) values (14,4);
insert into recomended (sneaker_id, andere_sneaker_id) values (14,10);
insert into recomended (sneaker_id, andere_sneaker_id) values (14,12);
insert into recomended (sneaker_id, andere_sneaker_id) values (14,13);
insert into recomended (sneaker_id, andere_sneaker_id) values (15,2);
insert into recomended (sneaker_id, andere_sneaker_id) values (15,8);
insert into recomended (sneaker_id, andere_sneaker_id) values (15,11);

