/*****************************************************************************************************************
NAME:    dbo.v_LoansperBranchYear
PURPOSE: Create a view

SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/14/2020   BRUNOFREITAS  1. Creation of the View

RUNTIME: 
Approx. 1 min

******************************************************************************************************************/

USE [DFNB2]
GO

/****** Object:  View [dbo].[v_LoansperBranchYear]    Script Date: 11/11/2020 10:51:25 ******/
DROP VIEW [dbo].[v_LoansperBranchYear]
GO

/****** Object:  View [dbo].[v_LoansperBranchYear]    Script Date: 11/11/2020 10:51:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	[dbo].[v_LoansperBranchYear] AS

SELECT 
   
	 tad.branch_id AS Branch
	 ,bd.branch_desc
	 , year(tafd.as_of_date) AS year
	 , sum( tad.loan_amt) AS TotalLoan

  FROM dbo.tblAccountDim AS tad
       JOIN
       dbo.tblAccountFact AS tafd
	   ON tad.acct_id = tafd.acct_id
	   JOIN	dbo.tblBranchDim as bd
	   ON tad.branch_id = bd.branch_id

	   GROUP BY	tad.branch_id, year(tafd.as_of_date), bd.branch_desc	  

	  
	 


GO

	  
	 


