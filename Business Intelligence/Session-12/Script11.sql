USE entertainment_agenecy;

-- select EngagementNumber, StartDate, EndDate, DateDiff(str_to_date(EndDate, "%d/%m/%Y"),str_to_date(StartDate,"%d/%m/%Y"))+1 As EngagementRun
-- from engagements

select concat(AgtFirstName, " ", AgtLastName) as AgtFullName, DateHired, date_add(str_to_date(DateHired, "%d/%m/%Y"), interval 6 month) as PerfomanceReviewDate
from agents
order by PerfomanceReviewDate asc
