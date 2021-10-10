CREATE TABLE Users (
	UserId int PRIMARY KEY,
	Location char(255),
	Country char(255),
	Rating int
	);

CREATE TABLE Items (
	ItemId int PRIMARY KEY,
	SellerId int,
	Country char(255),
	Description text,
	Name char(255),
	Started char(255),
	Ends char(255),
	Location char(255),
	NumberOfBids int,
	Currently float(2),
	FirstBid float(2),
	BuyPrice float(2),
	FOREIGN KEY (SellerId) REFERENCES Users(UserId)
	);

-- We may be able to shorten the length of BidTime
CREATE TABLE Bids (
	BidTime char(255),
	Amount float(2),
	ItemId int,
	UserId int,
	PRIMARY KEY (BidTime, ItemId, UserId)
	FOREIGN KEY (ItemId) REFERENCES Items(ItemId),
	FOREIGN KEY (UserId) REFERENCES Users(UserId)
	);

CREATE TABLE Categories(
	ItemId int,
	Description char(255),
	PRIMARY KEY (ItemId, Description),
	FOREIGN KEY (ItemId) REFERENCES Items(ItemId)
	);
