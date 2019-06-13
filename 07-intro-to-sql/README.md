# Intro to SQL

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data).
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below
##Question :
1. Filter out specific columns in select.

## Challenges
1. Write the SQL to return all of the rows in the artists table?
```SQL
SELECT * FROM artists
```

2. Write the SQL to select the artist with the name "Black Sabbath"
```SQL
SELECT name FROM artists WHERE artists.name = "Black Sabbath"
```

3. Write the SQL to create a table named 'fans' with an auto-incrementing ID that's a primary key and a name field of type text
```sql
CREATE TABLE fans (id INTEGER PRIMARY KEY, name TEXT);
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?
```sql
ALTER TABLE fans ADD COLUMN artist_id INTEGER
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**
```sql
INSERT INTO fans(name, artist_id )VALUES ("Rohit", 169);
INSERT INTO fans(name, artist_id )VALUES ("Aliya", 169);
INSERT INTO fans(name, artist_id )VALUES ("Spencer", 169);
```

6. Write the SQL to return fans that are not fans of the black eyed peas.
```sql
SELECT name FROM fans WHERE artist_id != 100;
```

7. remove fans from our DB
```sql
DROP TABLE fans;
```

8. Write the SQL to display an artists name next to their album title
```sql
SELECT artists.name AS artist_name, albums.title AS album_name FROM artists INNER JOIN albums ON artists.id= albums.artist_id;
```

9. Write the SQL to display artist name, album name and number of tracks on that album
```sql
SELECT COUNT() AS number_of_tracks, artist_name, album_title
FROM  
	(SELECT albums.id AS album, artists.name AS artist_name, albums.title AS album_title
	FROM artists INNER JOIN albums
	ON artists.id= albums.artist_id)

	INNER JOIN tracks ON album = tracks.album_id
	GROUP BY album_title
	ORDER BY artist_name
```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre
```sql
SELECT genres.name, artist_name
FROM (SELECT tracks.genre_id, album_id, artist_id, artist_name FROM
(SELECT albums.id AS albumid, artists.id AS artist_id, artists.name AS artist_name FROM artists INNER jOIN albums ON albums.artist_id = artists.id )
INNER JOIN tracks
ON tracks.album_id == albumid)
INNER JOIN genres ON genres.id == genre_id
WHERE genres.name = "Pop"
GROUP BY artist_name
ORDER BY artist_name DESC
```

## BONUS (very hard)

11. I want to return the names of the artists and their number of rock tracks
    who play Rock music
    and have more than 30 tracks
    in order of the number of rock tracks that they have
    from greatest to least

```sql
SELECT genres.name, artist_name, total_tracks
FROM (SELECT COUNT() as total_tracks, tracks.genre_id, album_id, artist_id, artist_name FROM
(SELECT albums.id AS albumid, artists.id AS artist_id, artists.name AS artist_name FROM artists INNER jOIN albums ON albums.artist_id = artists.id )
INNER JOIN tracks
ON tracks.album_id == albumid
GROUP BY album_id)
INNER JOIN genres ON genres.id == genre_id
WHERE genres.name = "Rock" AND total_tracks > 10
GROUP BY artist_name
ORDER BY total_tracks DESC

```
