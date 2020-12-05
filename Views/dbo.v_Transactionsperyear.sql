/*****************************************************************************************************************
NAME:    dbo.v_Transactionsperyear
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

--Create View [dbo].[v_Transactionsperyear] AS
--SELECT distinct 
--tb.branch_desc AS 'Name of Branch'
--,ty.tran_type_desc
--,count(tf.tran_date) AS 'Number of Transactions'
--,year(tf.tran_date) AS 'Year of Transaction'
--FROM dbo.tblTransactionFact tf
--INNER JOIN dbo.tblBranchDim tb ON tb.branch_id = tf.branch_id
--INNER JOIN dbo.tblTransactionTypeDim ty ON tf.tran_type_id = ty.tran_type_id
--GROUP BY
--tb.branch_desc
--,ty.tran_type_desc
--,year(tf.tran_date)

USE [DFNB2]
GO

/****** Object:  View [dbo].[v_Transactionsperyear]    Script Date: 30/11/2020 15:52:47 ******/
DROP VIEW [dbo].[v_Transactionsperyear]
GO

/****** Object:  View [dbo].[v_Transactionsperyear]    Script Date: 30/11/2020 15:52:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create View [dbo].[v_Transactionsperyear] AS
SELECT distinct 
tb.branch_desc AS 'Branch_Name'
,ty.tran_type_desc
,count(tf.tran_date) AS 'Total_Transactions'
,year(tf.tran_date) AS 'Transaction_Year'
FROM dbo.tblTransactionFact tf
INNER JOIN dbo.tblBranchDim tb ON tb.branch_id = tf.branch_id
INNER JOIN dbo.tblTransactionTypeDim ty ON tf.tran_type_id = ty.tran_type_id
GROUP BY
tb.branch_desc
,ty.tran_type_desc
,year(tf.tran_date)

GO

