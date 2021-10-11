%%sql with m as (select max(Amount)
                from Bids)
select ItemId
from Bids b
where Amount = m;