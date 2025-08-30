
SELECT
  strftime('%Y', m.release_date) AS release_year,
  round(AVG(m.popularity),2) as avg_popularity,
  COUNT(m.id) as total_movies,
  round(avg(m.budget),2) as avg_budget,
  round(avg(m.revenue),2) as avg_revenue
FROM directors d
left join movies m on m.director_id=d.id
WHERE m.release_date IS NOT NULL
group by strftime('%Y', m.release_date)
order by m.release_date
