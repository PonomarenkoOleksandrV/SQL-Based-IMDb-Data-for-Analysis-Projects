SELECT 
   strftime('%Y', m.release_date) AS release_year,
   round(avg(m.popularity),2) as avg_popularity,
   round(avg(m.vote_average),2) as avg_rating
 FROM directors d
   left join movies m on m.director_id=d.id
 WHERE m.budget IS NOT NULL AND m.budget >= 0
 GROUP by strftime('%Y', m.release_date)
 ORDER by release_year
