

SELECT
m.original_title,
m.release_date,
m.budget,
m.revenue,
CASE 
	when m.budget>50000000 and m.revenue<10000000 then 'Failed movie'
	when m.budget<5000000 and m.revenue>100000000 then 'Low-Cost'
END as Abnormal_cases
FROM directors d
left join movies m on m.director_id=d.id
where ( m.budget>50000000 and m.revenue<10000000)
    or 
      (m.budget<5000000 and m.revenue>100000000)

