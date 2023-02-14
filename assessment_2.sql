-- 1

select * from cd.facilities;

-- 2

select name, membercost from cd.facilities;

-- 3

select * from cd.facilities where membercost > 0;

-- 4

select facid, name, membercost, monthlymaintenance
from cd.facilities
where membercost > 0 and (membercost < monthlymaintenance/50.0);

-- 5

select * from cd.facilities
where name like '%Tennis%';

-- 6

select * from cd.facilities
where facid = 1 or facid = 5;

-- 7 

select memid, surname, firstname, joindate from cd.members
where joindate > '2012-09-01';

-- 8 

select distinct(surname) from cd.members
order by surname
limit 10;

-- 9

select joindate from cd.members
order by joindate desc
limit 1;


-- 10

select count(*) from cd.facilities
where guestcost >= 10;

-- 11

select facid, sum(slots) as "Total Slots" from cd.bookings
where starttime between '2012-09-01' and '2012-10-01'
group by facid
order by sum(slots)


-- 12

select facid, sum(slots) as "total_slots" from cd.bookings
group by facid
having sum(slots) > 1000
order by facid;


-- 13

select b.starttime, f."name"  from cd.bookings b
inner join facilities f on b.facid = f.facid
where f.facid in (0,1)
and b.starttime::date = '2012-09-21';

-- 14

select b.starttime from cd.bookings b
inner join cd.members m 
on b.memid = m.memid
where m.surname = 'Farrell' and m.firstname = 'David';
