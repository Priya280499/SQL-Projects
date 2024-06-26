--Q1. Write query to return the email, first name, last name & Genre of all Rock Music 
--    listeners. Return your list ordered alphabetically by email starting with A
SELECT DISTINCT email, first_name, last_name FROM customer 
	JOIN invoice ON customer.customer_id = invoice.customer_id
	JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
	WHERE track_id IN( SELECT track_id FROM track 
					  	JOIN genre ON track.genre_id = genre.genre_id
					  	WHERE genre.name LIKE 'Rock')
ORDER BY email;

--Q2. Let's invite the artists who have written the most rock music in our dataset. Write a 
--    query that returns the Artist name and total track count of the top 10 rock bands
SELECT artist.artist_id, artist.name, COUNT (artist.artist_id) AS No_of_Songs FROM track 
JOIN album ON album.album_id = track.album_id
JOIN artist ON artist.artist_id = album.artist_id
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id
ORDER BY No_of_Songs DESC
LIMIT 10;

--Q3. Return all the track names that have a song length longer than the average song length. Return the 
--	  Name and Milliseconds for each track. Order by the song length with the longest songs listed first.
select avg(milliseconds) from track;
--393599.212103910933

select name, milliseconds from track 
where milliseconds > ( select avg(milliseconds) from track)
order by milliseconds desc;










