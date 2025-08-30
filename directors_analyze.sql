SELECT 
 d.name,
 COUNT(m.original_title) as total_movies,
 sum(m.revenue) as total_revenue,
 ROUND(avg((m.revenue - m.budget)*1.0/ NULLIF(m.budget, 0)), 2) AS avg_ROI --показник окупності інвестицій у фільмах
FROM directors d
left join movies m on m.director_id=d.id
where m.budget is not null and budget >= 0
group by d.name
order by ROUND(avg((m.revenue - m.budget)*1.0/ NULLIF(m.budget, 0)), 2) desc
limit 100