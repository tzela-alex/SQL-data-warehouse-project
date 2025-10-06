-- This script creates a new data warehouse after checking if it already exists.
-- If the database exists, it will be dropped and recreated.
-- Additionally, it creates three schemas: bronze, silver, and gold.
-- WARNING: Running this script will destroy the existing database and all its data.



-- Check if the database exists before creating
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'DataWarehouse')
    DROP DATABASE DataWarehouse;
GO
-- Creating the data warehouse
CREATE DATABASE DataWarehouse;
GO
-- Creating the schemas
USE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO











