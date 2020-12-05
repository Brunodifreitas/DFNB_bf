/*****************************************************************************************************************
NAME:    dbo.v_BranchesTransactions
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


--CREATE VIEW	dbo.v_BranchesTransactions AS

--SELECT distinct 
--tf.branch_id
--,tb.branch_desc AS 'Branch_Name'
--,count(tf.tran_date) AS 'Total_Transactions'
--FROM dbo.tblTransactionFact tf
--INNER JOIN dbo.tblBranchDim tb ON tb.branch_id = tf.branch_id
--GROUP BY
--tf.branch_id
--,tb.branch_desc;

USE [DFNB2]
GO

/****** Object:  View [dbo].[v_BranchesTransactions]    Script Date: 30/11/2020 15:10:37 ******/
DROP VIEW [dbo].[v_BranchesTransactions]
GO

/****** Object:  View [dbo].[v_BranchesTransactions]    Script Date: 30/11/2020 15:10:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	[dbo].[v_BranchesTransactions] AS

SELECT distinct 
tf.branch_id
,tb.branch_desc AS 'Branch_Name'
,count(tf.tran_date) AS 'Total_Transactions'
FROM dbo.tblTransactionFact tf
INNER JOIN dbo.tblBranchDim tb ON tb.branch_id = tf.branch_id
GROUP BY
tf.branch_id
,tb.branch_desc;
GO
