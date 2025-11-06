/*
========================================================================
Create Database and Schemas
========================================================================

Script Purpose:
 This Script creates a new database named 'DataWarehouse' after checking if it already exits.
 if the database of the same name exists, it will get dropped and a new database is recreated,
 additionally, the script sets up three schemas within the database: 'bronze','silver','gold'.

 WARNING:
        Running this script will drop the entire 'DataWarehouse' database if it exists.
        All data in the database will be permanently deleted,proceed with caution and ensure 
        you have proper backups befor running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse'
IF EXISTS ( SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN 
      ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
      DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO



















