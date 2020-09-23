select con.contest_id,
        con.hacker_id, 
        con.name, 
        sum(sum_total_submissions), 
        sum(sum_total_accepted_submissions), 
        sum(sum_total_views), sum(sum_total_unique_views)
from contests as con 
join colleges as col on con.contest_id = col.contest_id 
join challenges as cha on  col.college_id = cha.college_id 

left join
(select challenge_id, sum(total_views) as sum_total_views, sum(total_unique_views) as  sum_total_unique_views
from view_stats group by challenge_id) vs 
on cha.challenge_id = vs.challenge_id 

left join
(select challenge_id, sum(total_submissions) as sum_total_submissions, sum(total_accepted_submissions) as sum_total_accepted_submissions 
from submission_stats group by challenge_id) ss 
on cha.challenge_id = ss.challenge_id
    
group by con.contest_id, con.hacker_id, con.name
having sum(sum_total_submissions)!=0 or 
        sum(sum_total_accepted_submissions)!=0 or
        sum(sum_total_views)!=0 or
        sum(sum_total_unique_views)!=0 --Excluding the result if all four sums are 0
order by contest_id
