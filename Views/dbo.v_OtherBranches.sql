/*****************************************************************************************************************
NAME:    dbo.v_OtherBranches
PURPOSE: Create a view

SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/30/2020   BRUNOFREITAS  1. Creation of the View

RUNTIME: 
Approx. 1 min

******************************************************************************************************************/

--CREATE VIEW	dbo.v_OtherBranches AS
--SELECT tc.first_name + ' ' + tc.last_name AS Customer
--     , tt.branch_id	
--	 ,count(tt.tran_date) AS Total_transitions
--  FROM dbo.tblTransactionFact AS tt
--       JOIN
--       dbo.tblAccountDim AS ta ON tt.acct_id = ta.acct_id
--       JOIN
--       dbo.tblCustomerDim AS tc ON ta.pri_cust_id = tc.cust_id
--       JOIN
--       dbo.tblBranchDim AS tb ON ta.branch_id = tb.branch_id
-- WHERE tc.first_name + ' ' + tc.last_name IN
--                                            (
--                                             'Amelia Hughes'
--                                           , 'Amelia Lee'
--                                           , 'Aria Diaz'
--                                           , 'Bella Patterson'
--                                           , 'Grace Ramirez'
--                                           , 'Sofia Lewis'
--                                           , 'Amelia Wright'
--                                           , 'Amelia Walker'
--                                           , 'Amelia Phillips'
--                                           , 'Abigail Mitchell'
--                                            )
--GROUP BY tc.first_name
--        , tc.last_name
--        , tt.branch_id;

USE [DFNB2]
GO

/****** Object:  View [dbo].[v_OtherBranches]    Script Date: 30/11/2020 23:16:28 ******/
DROP VIEW [dbo].[v_OtherBranches]
GO

/****** Object:  View [dbo].[v_OtherBranches]    Script Date: 30/11/2020 23:16:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	[dbo].[v_OtherBranches] AS
SELECT tc.first_name + ' ' + tc.last_name AS Customer
     , tt.branch_id	
	 ,count(tt.tran_date) AS Total_transitions
  FROM dbo.tblTransactionFact AS tt
       JOIN
       dbo.tblAccountDim AS ta ON tt.acct_id = ta.acct_id
       JOIN
       dbo.tblCustomerDim AS tc ON ta.pri_cust_id = tc.cust_id
       JOIN
       dbo.tblBranchDim AS tb ON ta.branch_id = tb.branch_id
 WHERE tc.first_name + ' ' + tc.last_name IN
                                            (
                                             'Amelia Hughes'
                                           , 'Amelia Lee'
                                           , 'Aria Diaz'
                                           , 'Bella Patterson'
                                           , 'Grace Ramirez'
                                           , 'Sofia Lewis'
                                           , 'Amelia Wright'
                                           , 'Amelia Walker'
                                           , 'Amelia Phillips'
                                           , 'Abigail Mitchell'
                                            )
GROUP BY tc.first_name
        , tc.last_name
        , tt.branch_id;




GO




