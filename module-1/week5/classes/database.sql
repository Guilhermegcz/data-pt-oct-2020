CREATE TABLE buildings (
    building_id bigint,
    building_name text,
    height bigint
);




CREATE TABLE cities (
    "City" text,
    "Country" text,
    "Population" bigint,
    "Latitude" double precision,
    "Longitude" double precision
);




CREATE TABLE employees (
    role text,
    name text,
    years_employed bigint,
    building text
);



CREATE TABLE movie_info (
    movie_id bigint,
    rating double precision,
    domestic_sales bigint,
    international_sales bigint
);



CREATE TABLE movies (
    id bigint,
    title text,
    director text,
    year bigint,
    length_minutes bigint
);



CREATE TABLE user_info (
    username text,
    password text
);



INSERT INTO buildings (building_id, building_name, height) VALUES (1, 'Burj Khalifa', 828);
INSERT INTO buildings (building_id, building_name, height) VALUES (2, 'Central Plaza', 374);
INSERT INTO buildings (building_id, building_name, height) VALUES (3, 'Gevora Tower', 356);
INSERT INTO buildings (building_id, building_name, height) VALUES (4, 'Empire State', 381);


--


INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Guadalajara', 'Mexico', 1500800, 20.659699, -103.349609);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Toronto', 'Canada', 2795060, 43.653226000000004, -79.383184);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Houston', 'United States', 2195914, 29.760427000000004, -95.369803);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('New York', 'United States', 8405837, 40.712784, -74.005941);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Philadelphia', 'United States', 1553165, 39.952584, -75.165222);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Havana', 'Cuba', 2106146, 23.05407, -82.345189);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Mexico City', 'Mexico', 8555500, 19.432608, -99.133208);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Phoenix', 'United States', 1513367, 33.448377, -112.074037);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Los Angeles', 'United States', 3884307, 34.052234000000006, -118.24368500000001);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Ecatepec de Morelos', 'Mexico', 1742000, 19.601841, -99.050674);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Montreal', 'Canada', 1717767, 45.501689, -73.567256);
INSERT INTO cities ("City", "Country", "Population", "Latitude", "Longitude") VALUES ('Chicago', 'United States', 2718782, 41.878114000000004, -87.629798);

INSERT INTO public.employees (role, name, years_employed, building) VALUES ('Engineer', 'Becky A.', 4, 'Burj Khalifa');
INSERT INTO public.employees (role, name, years_employed, building) VALUES ('Engineer', 'Dan B.', 2, 'Burj Khalifa');
INSERT INTO public.employees (role, name, years_employed, building) VALUES ('Engineer', 'Sharon F.', 6, 'Burj Khalifa');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Engineer', 'Dan M.', 4, 'Burj Khalifa');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Engineer', 'Malcom S.', 1, 'Burj Khalifa');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Artist', 'Tylar S.', 2, 'Empire State');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Artist', 'Sherman D.', 8, 'Empire State');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Artist', 'Jakob J.', 6, 'Empire State');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Artist', 'Lillia A.', 7, 'Empire State');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Artist', 'Brandon J.', 7, 'Empire State');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Manager', 'Scott K.', 9, 'Burj Khalifa');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Manager', 'Shirlee M.', 3, 'Burj Khalifa');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Manager', 'Daria O.', 6, 'Empire State');
INSERT INTO employees (role, name, years_employed, building) VALUES ('Engineer', 'Yancy I.', 0, NULL);
INSERT INTO employees (role, name, years_employed, building) VALUES ('Artist', 'Oliver P.', 0, NULL);


INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (5, 8.2, 380843261, 555900000);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (14, 7.4, 268492764, 475066843);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (8, 8, 206445654, 417277164);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (12, 6.4, 191452396, 368400000);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (3, 7.9, 245852179, 239163000);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (6, 8, 261441092, 370001000);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (9, 8.5, 223808164, 297503696);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (11, 8.4, 415004880, 648167031);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (1, 8.3, 191796233, 170162503);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (7, 7.2, 244082982, 217900167);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (10, 8.3, 293004164, 438338580);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (4, 8.1, 289916256, 272900000);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (2, 7.2, 162798565, 200600000);
INSERT INTO movie_info (movie_id, rating, domestic_sales, international_sales) VALUES (13, 7.2, 237283207, 301700000);



INSERT INTO movies (id, title, director, year, length_minutes) VALUES (1, 'Toy Story', 'John Lasseter', 1995, 81);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (2, 'A Bug''s Life', 'John Lasseter', 1998, 95);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (3, 'Toy Story 2', 'John Lasseter', 1999, 93);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (4, 'Monsters, Inc.', 'Pete Docter', 2001, 92);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (5, 'Finding Nemo', 'Andrew Stanton', 2003, 107);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (6, 'The Incredibles', 'Brad Bird', 2004, 116);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (7, 'Cars', 'John Lasseter', 2006, 117);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (8, 'Ratatouille', 'Brad Bird', 2007, 115);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (9, 'WALL-E', 'Andrew Stanton', 2008, 104);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (10, 'Up', 'Pete Docter', 2009, 101);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (11, 'Toy Story 3', 'Lee Unkrich', 2010, 103);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (12, 'Cars 2', 'John Lasseter', 2011, 120);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (13, 'Brave', 'Brenda Chapman', 2012, 102);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (14, 'Monsters University', 'Dan Scanlon', 2013, 110);
INSERT INTO movies (id, title, director, year, length_minutes) VALUES (87, 'WALL-G', 'Brenda Chapman', 2042, 97);


INSERT INTO user_info (username, password) VALUES ('andre', 'admin');
INSERT INTO user_info (username, password) VALUES ('lucas', 'qwerty');
INSERT INTO user_info (username, password) VALUES ('rai', '123456789');

