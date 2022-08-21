
--1
select ename,sum(DATEDIFF(HOUR,checkin,checkout))timework,(select sum(DATEDIFF(DAY,fromDate,toDate))
from request r where r.eid=e.eid group by r.eid) offday from TimeSheet t join Employee e on t.eid=e.eid
group by ename,e.eid
--2
select eid ,sum(DATEDIFF(DAY,fromDate,toDate)) as DayOff from request r group by eid ;
--3
SELECT e.eid,e.ename,ISNULL(t.tid,-1) tid,
t.checkin,t.checkout
FROM Employee e LEFT JOIN 
(SELECT * FROM TimeSheet WHERE checkin >= '2022-08-01'
AND checkin <= '2022-08-20') t
ON e.eid = t.eid
where e.eid = 1
