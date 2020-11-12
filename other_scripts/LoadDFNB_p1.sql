/*****************************************************************************************************************
NAME:    LoadDFNB_p1
PURPOSE: Load DFNB_p1

SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/21/2020   BRUNOFREITAS  1. Creation of the Script
1.1     11/04/2020   BRUNOFREITAS  1. Creation of loads 
RUNTIME: 
Approx. 1 min

NOTES:
Loading DFNB_STG_P1 - Project 1 database. Meaning creating all the tables inside the database.

******************************************************************************************************************/

-- 1) Load dbo.tblCustomerDim.sql

TRUNCATE TABLE dbo.tblCustomerDim;

INSERT INTO dbo.tblCustomerDim

SELECT DISTINCT
       s.cust_id
     , s.first_name
     , s.last_name
     , s.gender
	 , s.birth_date
     , s.cust_since_date
     , s.cust_add_id
	 , s.pri_branch_id
	 , s.cust_rel_id
FROM dbo.stg_p1 as s

-- 2) Load dbo.tblProductDim.sql

TRUNCATE TABLE dbo.tblProductDim;

INSERT INTO dbo.tblProductDim
SELECT DISTINCT 
       s.prod_id	 
  FROM dbo.stg_p1 AS s;

-- 3) Load dbo.tblAreaDim.sql

TRUNCATE TABLE dbo.tblAreaDim;

INSERT INTO dbo.tblAreaDim
SELECT DISTINCT 
       s.acct_area_id AS area_id
  FROM dbo.stg_p1 AS s;

-- 4) Load dbo.tblRegionDim.sql

TRUNCATE TABLE dbo.tblRegionDim;

INSERT INTO dbo.tblRegionDim
SELECT DISTINCT 
       s.acct_region_id AS region_id
  FROM dbo.stg_p1 AS s;

-- 5) Load dbo.tblAddressDim.sql

TRUNCATE TABLE dbo.tblAddressDim;

INSERT INTO dbo.tblAddressDim
SELECT DISTINCT 
       s.cust_add_id
     , s.cust_add_lat
     , s.cust_add_lon
     , s.cust_add_type
  FROM dbo.stg_p1 AS s;

-- 6) Load dbo.tblBranchDim.sql

TRUNCATE TABLE dbo.tblBranchDim;

INSERT INTO dbo.tblBranchDim
SELECT DISTINCT 
       s.acct_branch_id AS branch_id
     , s.acct_branch_code AS branch_code
     , s.acct_branch_desc AS branch_desc
     , s.acct_branch_add_id AS add_id
     , s.acct_area_id AS area_id
     , s.acct_region_id AS region_id
  FROM dbo.stg_p1 AS s;

-- 7) Load dbo.tblCustomerRoleDim.sql

TRUNCATE TABLE dbo.tblCustomerRoleDim;

INSERT INTO dbo.tblCustomerRoleDim
SELECT DISTINCT 
       s.acct_cust_role_id AS cust_role
  FROM dbo.stg_p1 AS s;

-- 8) Load dbo.tblAccountDim.sql

TRUNCATE TABLE dbo.tblAccountDim;

INSERT INTO dbo.tblAccountDim
SELECT DISTINCT 
       s.acct_id
	 , s.cust_id
	 , s.open_date
	 , s.open_close_code
	 , s.close_date
	 , s.loan_amt
	 , s.pri_cust_id
	 , s.prod_id
	 , s.branch_id
  FROM dbo.stg_p1 AS s;

-- 9) Load dbo.tblAccountCustomerDim.sql

TRUNCATE TABLE dbo.tblAccountCustomerDim;

INSERT INTO dbo.tblAccountCustomerDim
SELECT DISTINCT 
       s.acct_id
	 , s.cust_id
	 , s.acct_cust_role_id AS cust_role_id
  FROM dbo.stg_p1 AS s;

-- 10) Load dbo.tblAccountFactDim.sql

TRUNCATE TABLE dbo.tblAccountFactDim;

INSERT INTO dbo.tblAccountFactDim
SELECT DISTINCT 
       s.as_of_date
	 , s.cur_bal
	 , s.acct_id
  FROM dbo.stg_p1 AS s;