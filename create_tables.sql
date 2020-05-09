DROP TABLE IF EXISTS movies_master CASCADE;
DROP TABLE IF EXISTS ratings CASCADE;
DROP TABLE IF EXISTS production CASCADE;
DROP TABLE IF EXISTS franchises CASCADE;

CREATE TABLE movies_master (
    movie_id bigint PRIMARY KEY NOT NULL ,
    movie_name varchar,
    release_date varchar,
    rating float,
    revenue bigint,
    production_companies_clean varchar,
    production_budget varchar
);

CREATE TABLE ratings (
    movie_name varchar,
    movie_id bigint NOT NULL ,
    rating float, 
	FOREIGN KEY (movie_id) REFERENCES movies_master(movie_id)
);

CREATE TABLE production (
    movie_id bigint NOT NULL ,
    movie_name varchar,
    production_companies_clean varchar,
    production_budget varchar,
	FOREIGN KEY (movie_id) REFERENCES movies_master(movie_id)
);

CREATE TABLE franchises (
    franchise varchar,
    movie_title varchar,
    movie_id bigint NOT NULL ,
    movie_revenue bigint,
    total_franchise_revenue bigint,
    percent_franchise_rev float,
	FOREIGN KEY (movie_id) REFERENCES movies_master(movie_id)
);
