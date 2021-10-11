with numCats as (select distinct ItemId, count(Description) as ct
                       from Categories
                       group by ItemId)
select count(b.BidTime)
from Bids b, numCats n
where b.ItemId = b.ItemId
and n.ct = 4;