drop table if exists authors CASCADE;
drop table if exists genres CASCADE;
drop table if exists movies CASCADE;
drop table if exists movies_genre CASCADE;
drop table if exists reviews CASCADE;
create table authors (id bigint generated by default as identity, name varchar(255), primary key (id));
create table genres (id bigint generated by default as identity, name varchar(255), primary key (id));
create table movies (id bigint generated by default as identity, classification varchar(255), country varchar(255), duration integer not null, language varchar(255), last_update timestamp, name varchar(255), rating decimal, year integer not null, primary key (id));
create table movies_genre (movie_id bigint not null, genre_id bigint not null, primary key (movie_id, genre_id));
create table reviews (id bigint generated by default as identity, review varchar(255), author_id bigint, movie_id bigint, review_id bigint, primary key (id));
alter table movies_genre add constraint FKt0hut1q5n87dirmb0gt98k2wp foreign key (genre_id) references genres;
alter table movies_genre add constraint FKaxumv92grlo4xthfcqwiwcok6 foreign key (movie_id) references movies;

insert into GENRES (ID, NAME) values (1, 'Action');
insert into GENRES (ID, NAME) values (2, 'Adventure');
insert into GENRES (ID, NAME) values (3, 'Animation');
insert into GENRES (ID, NAME) values (4, 'Comedy');
insert into GENRES (ID, NAME) values (5, 'Crime');
insert into GENRES (ID, NAME) values (6, 'Drama');
insert into GENRES (ID, NAME) values (7, 'Experimental');
insert into GENRES (ID, NAME) values (8, 'Fantasy');
insert into GENRES (ID, NAME) values (9, 'Historical');
insert into GENRES (ID, NAME) values (10, 'Horror');
insert into GENRES (ID, NAME) values (11, 'Romance');
insert into GENRES (ID, NAME) values (12, 'Science Fiction');
insert into GENRES (ID, NAME) values (13, 'Thriller');
insert into GENRES (ID, NAME) values (14, 'Western');
insert into GENRES (ID, NAME) values (15, 'Other');

insert into AUTHORS (ID, NAME) values (1, 'Tariq Ali');
insert into AUTHORS (ID, NAME) values (2, 'Rudolf Arnheim');
insert into AUTHORS (ID, NAME) values (3, 'Béla Balázs');
insert into AUTHORS (ID, NAME) values (4, 'André Bazin');
insert into AUTHORS (ID, NAME) values (5, 'Peter Bogdanovich');
insert into AUTHORS (ID, NAME) values (6, 'David Bordwell');
insert into AUTHORS (ID, NAME) values (7, 'Noël Burch');
insert into AUTHORS (ID, NAME) values (8, 'Ernest Callenbach');
insert into AUTHORS (ID, NAME) values (9, 'Ray Carney');
insert into AUTHORS (ID, NAME) values (10, 'Carol J. Clover');
insert into AUTHORS (ID, NAME) values (11, 'Hamid Dabashi');
insert into AUTHORS (ID, NAME) values (12, 'Serge Daney (Cahiers du Cinéma, Libération, Trafic)');
insert into AUTHORS (ID, NAME) values (13, 'Maya Deren');
insert into AUTHORS (ID, NAME) values (14, 'Wheeler Winston Dixon');
insert into AUTHORS (ID, NAME) values (15, 'Mary Ann Doane');
insert into AUTHORS (ID, NAME) values (16, 'Vijayakrishnan');
insert into AUTHORS (ID, NAME) values (17, 'Raymond Durgnat');

insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (1, 'G', 'United States of America', 178, 'English', '2022-05-24 15:47:08.703041', 'The Lord of the rings', 8.9, 2001);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (2, 'NC17', 'United States of America', 87, 'English', '2022-05-24 15:47:08.720504', 'Cobra', 5.8, 1986);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (3, 'R', 'Brazil', 130, 'Portuguese', '2022-05-24 15:47:08.729928', 'Cidade de Deus', 8.6, 2002);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (4, 'R', 'South Korea', 132, 'Korean', '2022-05-24 15:47:08.751521', 'Parasite', 8.5, 2019);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (5, 'NC17', 'United States of America', 107, 'English', '2022-05-24 15:47:08.762757', 'The Terminator', 8.1, 1984);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (6, 'PG13', 'United States of America', 142, 'English', '2022-05-24 15:47:08.769207', 'The Shawshank Redemption', 9.3, 1994);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (7, 'PG13', 'Brazil', 145, 'Portuguese', '2022-05-24 15:47:08.781089', 'Carandiru', 7.3, 2003);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (8, 'PG13', 'United States of America', 143, 'English', '2022-05-24 15:47:08.806185', 'The Dark Knight', 9.1, 2008);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (9, 'R', 'United States of America', 154, 'English', '2022-05-24 15:47:08.822515', 'Pulp Fiction', 8.9, 1994);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (10, 'R', 'United States of America', 178, 'English', '2022-05-24 15:47:08.832436', 'The Good the Bad and the Ugly', 8.8, 1966);
insert into MOVIES (ID, CLASSIFICATION, COUNTRY, DURATION, LANGUAGE, LAST_UPDATE, NAME, RATING, YEAR) values (11, 'R', 'United States of America', 139, 'English', '2022-05-24 15:47:08.840939', 'Fight Club', 8.8, 1999);

insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (1, 1);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (1, 6);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (2, 1);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (2, 13);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (3, 5);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (3, 6);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (4, 4);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (4, 6);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (4, 13);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (5, 1);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (5, 13);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (6, 6);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (7, 5);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (7, 6);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (8, 1);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (8, 5);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (8, 6);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (8, 13);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (9, 5);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (9, 6);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (10, 2);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (10, 14);
insert into MOVIES_GENRE (MOVIE_ID, GENRE_ID) values (11, 6);

insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (1, '2022-05-24T18:47:08.921847Z', 2, 1, 2);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (2, '2022-05-24T18:47:08.942162Z', 3, 2, 3);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (3, '2022-05-24T18:47:08.950007Z', 4, 3, 4);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (4, '2022-05-24T18:47:08.956545Z', 5, 4, 5);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (5, '2022-05-24T18:47:08.956621Z', 5, 4, 5);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (6, '2022-05-24T18:47:08.965770Z', 6, 5, 6);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (7, '2022-05-24T18:47:08.965829Z', 6, 5, 6);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (8, '2022-05-24T18:47:08.973204Z', 7, 6, 7);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (9, '2022-05-24T18:47:08.973280Z', 7, 6, 7);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (10, '2022-05-24T18:47:08.982856Z', 8, 7, 8);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (11, '2022-05-24T18:47:08.982925Z', 8, 7, 8);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (12, '2022-05-24T18:47:08.991024Z', 9, 8, 9);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (13, '2022-05-24T18:47:08.997152Z', 10, 9, 10);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (14, '2022-05-24T18:47:09.003492Z', 11, 10, 11);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (15, '2022-05-24T18:47:09.003578Z', 11, 10, 11);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (16, '2022-05-24T18:47:09.008835Z', 12, 11, 12);
insert into REVIEWS (ID, REVIEW, AUTHOR_ID, MOVIE_ID, REVIEW_ID) values (17, '2022-05-24T18:47:09.008887Z', 12, 11, 12);
