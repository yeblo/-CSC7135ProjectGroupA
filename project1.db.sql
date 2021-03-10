BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "BikeDetails" (
	"BikeId"	INTEGER NOT NULL,
	"dockID"	INTEGER NOT NULL,
	"city"	INTEGER NOT NULL,
	"Createdby"	INTEGER NOT NULL,
	"createdOn"	INTEGER NOT NULL,
	PRIMARY KEY("city" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "CreditDetails" (
	"cardNo"	INTEGER NOT NULL,
	"cardHolder Name"	TEXT NOT NULL,
	"cvv"	INTEGER NOT NULL,
	"expirydate"	TEXT NOT NULL,
	"crdtype"	TEXT NOT NULL,
	"CreatedBy"	INTEGER,
	"CreatedOn"	TEXT,
	PRIMARY KEY("cardNo")
);
CREATE TABLE IF NOT EXISTS "UserDetails" (
	"firstName"	TEXT NOT NULL,
	"lastName"	TEXT NOT NULL,
	"Birthdate"	TEXT NOT NULL,
	"EmailId"	TEXT,
	"password"	TEXT NOT NULL,
	"Address"	TEXT NOT NULL,
	"cardid"	NUMERIC NOT NULL,
	"ContactNO"	NUMERIC NOT NULL,
	"CustId"	INTEGER NOT NULL,
	"userType"	TEXT NOT NULL,
	"CreatedBy"	TEXT,
	"CreatedOn"	INTEGER,
	PRIMARY KEY("CreatedOn" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "BookingDetails" (
	"BookingID"	INTEGER NOT NULL,
	"CstID"	INTEGER NOT NULL,
	"StartTime"	NUMERIC NOT NULL,
	"EndTime"	NUMERIC NOT NULL,
	"BikeID"	INTEGER NOT NULL,
	"BikePrice"	INTEGER NOT NULL,
	"CreatedBy"	TEXT NOT NULL,
	"CreatedOn"	TEXT NOT NULL,
	PRIMARY KEY("BookingID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "CostEstimation" (
	"BikeID"	INTEGER NOT NULL,
	"CostID"	INTEGER NOT NULL,
	"HourlyCost"	TEXT NOT NULL,
	"DeductionOnDamage"	INTEGER NOT NULL,
	"dailyCost"	INTEGER NOT NULL,
	"WeeklyCost"	INTEGER NOT NULL,
	"MonthlyCost"	INTEGER NOT NULL,
	"CreatedBy"	TEXT NOT NULL,
	"CreatedOn"	INTEGER NOT NULL,
	PRIMARY KEY("CreatedOn" AUTOINCREMENT)
);
COMMIT;
