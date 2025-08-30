SELECT 
m.original_title,
m.budget,
m.revenue,
round(((m.revenue - m.budget)*1.0/ NULLIF(m.budget, 0)),1) AS ROI, --показник окупності інвестицій у фільмах
CASE 
	when (m.revenue-m.budget)>0 then 'Прибутковий'
	when (m.revenue-m.budget)=0 then 'Нульова окупність'
	else 'Збитковий'
END as profit_status
FROM directors d
left join movies m on m.director_id=d.id
where m.budget is not null and budget >= 0
order by ROI desc 
