CREATE DATABASE PeopleDeskHomeWork
GO

USE PeopleDeskHomeWork
GO

CREATE TABLE tblItem
(
	intItemId BIGINT IDENTITY(1,1) NOT NULL,
	strItemName NVARCHAR(250) NOT NULL,
	numStockQuantity DECIMAL(18, 0) NOT NULL,
	isActive BIT NOT NULL
)
GO

CREATE TABLE tblPartnerType
(
	intPartnerTypeId BIGINT IDENTITY(1,1) NOT NULL,
	strPartnerTypeName NVARCHAR(50) NOT NULL,
	isActive BIT NOT NULL
)
GO

CREATE TABLE tblPartner
(
	intPartnerId BIGINT IDENTITY(1,1) NOT NULL,
	strPartnerName NVARCHAR(250) NOT NULL,
	intPartnerTypeId BIGINT NOT NULL,
	isActive BIT NOT NULL
)
GO

CREATE TABLE tblSales
(
	intSalesId BIGINT IDENTITY(1,1) NOT NULL,
	intCustomerId BIGINT NOT NULL,
	dteSalesDate DATETIME NOT NULL,
	isActive BIT NOT NULL
)
GO

CREATE TABLE tblSalesDetails
(
	intSalesDetailsId BIGINT IDENTITY(1,1) NOT NULL,
	intSalesId BIGINT NOT NULL,
	intItemId BIGINT NOT NULL,
	intItemQuantity BIGINT NOT NULL,
	numUnitPrice DECIMAL(18, 0) NOT NULL,
	isActive BIT NOT NULL
)
GO

CREATE TABLE tblPurchase
(
	intPurchaseId BIGINT IDENTITY(1,1) NOT NULL,
	intSupplierId BIGINT NOT NULL,
	dtePurchaseDate DATETIME NOT NULL,
	isActive BIT NOT NULL
)
GO

CREATE TABLE tblPurchaseDetails
(
	intPurchaseDetailsId BIGINT IDENTITY(1,1) NOT NULL,
	intPurchaseId BIGINT NOT NULL,
	intItemId BIGINT NOT NULL,
	intItemQuantity BIGINT NOT NULL,
	numUnitPrice DECIMAL(18, 0) NOT NULL,
	isActive BIT NOT NULL
)
GO