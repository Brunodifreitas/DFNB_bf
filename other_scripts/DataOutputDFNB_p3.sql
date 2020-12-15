/*****************************************************************************************************************
NAME:    DataOutputDFNB_p3
PURPOSE: Create the output for all views created on project 03

SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/15/2020   BRUNOFREITAS  1. Creation of the Script for output
 
RUNTIME: 
Approx. 1 min

NOTES:
Creating of the script to run all views at once.

******************************************************************************************************************/

SELECT *
  FROM [dbo].[v_LoansperBranchYear];

