originated from 
[
https://github.com/learn-co-curriculum/project-template-react-rails-api
](https://github.com/learn-co-curriculum/react-rails-project-setup-guide)


https://fav-chord.onrender.com

https://www.scales-chords.com/api/#examples


* to enter the database 
$rails dbconsole or 
$rails db


* to see database
development=# \l 

* to see tables in database
development=# \dt

development=# \dt+

* to see tables in database
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';


* to see table detail
Select * from <table_names>

$rails c
>User.first
>FavChord.first
>Chord.first

