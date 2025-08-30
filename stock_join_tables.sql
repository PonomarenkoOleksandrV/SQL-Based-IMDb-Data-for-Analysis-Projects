SELECT
d.name,
d.id, 
d.gender,
d.id,
d.department,
m.original_title,
m.budget,
m.popularity,
m.release_date,
m.revenue,
m.title,
m.vote_average,
m.vote_count,
m.overview,
m.tagline,
m.uid,
m.director_id
FROM directors d
left join movies m on m.director_id=d.id

