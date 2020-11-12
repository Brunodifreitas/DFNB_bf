/*****************************************************************************************************************
NAME:    dbo.v_AccountsOpen
PURPOSE: Create a view

SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/11/2020   BRUNOFREITAS  1. Creation of the View

RUNTIME: 
Approx. 1 min

******************************************************************************************************************/

USE [DFNB2]
GO

/****** Object:  View dbo.v_AccountsOpen    Script Date: 11/11/2020 10:51:25 ******/
DROP VIEW dbo.v_AccountsOpen
GO

/****** Object:  View dbo.v_AccountsOpen    Script Date: 11/11/2020 10:51:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	dbo.v_AccountsOpen AS

SELECT COUNT(tad.open_date) AS AccountsOpen
     , tad.branch_id
     , YEAR(tad.open_date) AS YearOpen
  FROM dbo.tblAccountDim AS tad
 WHERE YEAR(tad.open_date) IN
                             (
                              2019
                            , 2018
                            , 2017
                             )
 GROUP BY tad.branch_id
        , YEAR(tad.open_date)

 

	  
	 


GO

