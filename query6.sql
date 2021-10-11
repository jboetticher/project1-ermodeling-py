select count(i.SellerId)
from Items i, Bids b
where i.SellerId = b.UserId;