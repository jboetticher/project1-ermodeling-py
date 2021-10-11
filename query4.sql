with m as (select max(Currently) as m
                from Items)
select ItemId
from Bids b
where Amount = m.m;