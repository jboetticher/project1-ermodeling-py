DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Items;
DROP TABLE IF EXISTS Bids;
DROP TABLE IF EXISTS Categories;

CREATE TABLE Users (
	Location char(255),
	Country char(255),
	UserId char(255) PRIMARY KEY,
	Rating int
	);

CREATE TABLE Items (
	SellerId int NOT NULL,
	Started char(255),
	Ends char(255),
	Currently float(2),
	FirstBid float(2),
	Description text,
	ItemId int PRIMARY KEY,
	Name char(255),
	Location char(255),
	NumberOfBids int,
	BuyPrice float(2),
	Country char(255),
	FOREIGN KEY (SellerId) REFERENCES Users(UserId)
	);

-- We may be able to shorten the length of BidTime
CREATE TABLE Bids (
	BidTime char(255),
	Amount float(2),
	ItemId int NOT NULL,
	UserId char(255) NOT NULL,
	PRIMARY KEY (BidTime, ItemId, UserId)
	FOREIGN KEY (ItemId) REFERENCES Items(ItemId),
	FOREIGN KEY (UserId) REFERENCES Users(UserId)
	);

CREATE TABLE Categories(
	ItemId int NOT NULL,
	Description char(255),
	PRIMARY KEY (ItemId, Description),
	FOREIGN KEY (ItemId) REFERENCES Items(ItemId)
	);
