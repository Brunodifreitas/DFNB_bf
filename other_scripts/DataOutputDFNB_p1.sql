/*****************************************************************************************************************
NAME:    DataOutputDFNB_p1
PURPOSE: Create the output for all views created on project 01

SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/11/2020   BRUNOFREITAS  1. Creation of the Script for output
 
RUNTIME: 
Approx. 1 min

NOTES:
Creating of the script to run all views at once.

******************************************************************************************************************/

SELECT *
  FROM dbo.v_AccountsClosed;

SELECT *
  FROM dbo.v_AccountsOpen;

SELECT *
  FROM dbo.v_AverageBalanceperYear;

SELECT *
  FROM dbo.v_Customers;

SELECT *
  FROM dbo.v_LoansperBranch;

SELECT *
  FROM dbo.v_TotalAccounts;