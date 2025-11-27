/*
============================================================================================
CREATE DATABASE and Schemas
============================================================================================
Script Purpose:
    This script create a new database named 'DataWarehouse' after checking if it already exists
    IF the database exists, it is dropped and recreated.Addittionaly, the script sets up three schemas
    with the database: 'bronze', 'silver', 'gold'

Warning:
    Running this script will the entire 'DataWarehouse if it exists'.
    All datat in the database will be permantley deleted.Proceed with caution
    and ensure you have proper backups before running the script.
*/

Use master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse
GO

USE DataWarehouse
GO

--Create SCHEMAS 

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO 

CREATE SCHEMA gold;
GO
