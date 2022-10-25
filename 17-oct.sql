select *
from accounts
join web_events
on accounts.id = web_events.account_id;

select *
from accounts a
join web_events w
on a.id = w.account_id
where a.name = 'Walmart'
and w.channel = 'direct';

select *
from sales_reps s
join region r
on r.id = s.region_id
where r.id in (1,2)
;

-- select a.name = walmart where the std_qty divided by the gloss_qty greater than 10
select *, (total / 100) as "perc"
from accounts a
join orders o
on a.id = o.account_id
where a.name = 'Walmart'
and (total / 100) > 5;

/** jpoin orders and acccounts table and get the standard qty / gloss qty **/
select *, (standard_qty/ gloss_qty) as "divisor"
from accounts a
join orders o
on a.id = o.account_id
where a.name in ('Walmart', 'Ford Motor')
and (standard_qty/ gloss_qty) 
between 10 and 20
;

select *
from accounts;