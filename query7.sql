%%sql select count(distinct c.Description)
from Categories c, Bids b
where b.Amount > 100;