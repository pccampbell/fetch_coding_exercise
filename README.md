# fetch_coding_exercise
## This repos contains all of the files for Peter Campbell's work on the coding exercise for Fetch.

I did most of the work in a jupyter notebook that is included in this repo for viewing of my work. The notebook is not intended as a walkthrough but simply a display of what I did to understand the data and wrangle it into dataframes for upload to a SQLite database. This was my first time using sqlite and the choice was made to try to make sure my SQL code was easily runnable for the reviewer of this exercise. In all honesty I didn't love working with SQLite after I realized it doesnt have timestamp data types and you have to work off of strings, but it worked for this exercise. PosrgeSQL would have been my top choice to work with. 

Once the data was inserted into the database tables I used DBeaver to connect to the SQLite database and run queries. I had also initially created a diagram in draw.io, but ended up using DBeaver for the ER diagram as I had made a lot of changes and it was much faster than recreating in draw.io. 

I had initially planned a more robust table structure focused on events and how data would pulled from raw tables to make views such as the data provided in the user file like lastLogin and active. I felt it over complicated the situation for this project and would have made too many assumptions on other data not provided and the structure of the data stream. In the end this simplified structure was what I went with focusing on items that would be primary keys. The only id that I didn't generate a table for was cpg_id because the only information included was the variable ref and that was a one to one match with that brand_id.

The answers to the sql queries were based on the best concept I could think of to answer the question with one query and that somewhat worked around the data with most receipts coming from Jan 2021. I avoided the user based questions as most users joined outside 6 months ago and not over a spand of 6 months. 

I addressed some of the data quality issues I found in the communication message and these were unconvered either in the Python jupyter notebook or additional exploration SQL queries.

I enjoyed the exercise even with my intial confusion over the data structure and look forward to discussing it with the reviewer(s).


### Peter Campbell
