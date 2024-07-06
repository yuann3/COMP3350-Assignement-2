-------------------------------------------
-- Author:  Min Thu Khaing
-- Description: This script is used to create a table in the Staging_Area database.
-- Date: 2024/07/06
-- Version: 1.0
-- COPYRIGHT: (C) 2024 Min Thu Khaing
-------------------------------------------

CREATE DATABASE Staging_Area;

USE Staging_Area;
CREATE TABLE CustomerDimension
(
    CustomerKey INT,
    CustomerName NVARCHAR(152),
    StreetAddress NVARCHAR(200),
    City NVARCHAR(50),
    StateProvinceCode NVARCHAR(50),
    StateProvinceName NVARCHAR(50),
    CountryCode NVARCHAR(50),
    CountryName NVARCHAR(50),
    PostCode NVARCHAR(50),
    DateOfBirth DATE
);

