Group 10, Project 2: ETL

This project was completed by Kirsten Fischl, Lea Loustaunau, and Brian Vera. 

Our project is focused on movie performance. 

This program uses 3 datasources to create 1 normalized database with 4 tables in PostgreSQL. We built our tables starting at movie titles and included applicable movie franchise, production company, release date, movie budget, worldwide movie revenue and average reported viewer rating. Using this info, we looked at the link between franchises and their revenue generated, top rated movies, and revenue by production company.

Here is how we did it.


Step 1 – Extract

We used 3 data sources. On Kaggle we found our main movie dataset (movies_metadata.csv) extracted from TMBD and ratings data (ratings.csv) from Movie Lens. We pulled franchise revenue data directly from the-numbers.com to look at top revenue generating franchises. 

Please see our project reference guide as well: https://docs.google.com/spreadsheets/d/1DnnvOishFszRhcl-hZRHTalrIiX0madkAmZKIzg151w/edit#gid=0

Step 2 – Transform

From the movies_metadata we eliminated all unnecessary data from our dataset. The movie_id was necessary to bring in ratings data, but only in the movies_metadata did the id have 0’s preceding all values. We eliminated the preceding 0’s in order to match the id in the ratings dataset. 

The main movies_metadata also had the production companies for each movie stored with their own production id’s in a list, with many movies having multiple production companies. We removed production company id and stored each value as a list so we later calculate total earned revenue.

Lastly, we created a clean dataframe that had total worldwide revenue by franchise. 


Step 3 – Load

We have 4 tables loaded. 

Our movies_master table has all the base data we compiled that we needed for all additional tables. This includes the movie title, movielens id, when the movie was released, how much the movie cost to make, how much revenue the movie earned, and the production companies that made the film.

Our ratings table uses the movielens id from our master table and pairs it with the movielens rating.

Our production table provides a list of all production companies involved in each movie. It also includes the amount of money budgeted by movie production.

Lastly, our franchises table includes a list of movie titles that make up a franchise, the total movie revenue, and the total revenue by franchise. 
