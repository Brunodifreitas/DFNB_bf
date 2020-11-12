/*****************************************************************************************************************
NAME:    dbo.tblCustomerRoleDim.sql
PURPOSE: Create dbo.tblCustomerRoleDim table

SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/21/2020   BRUNOFREITAS  1. Creation of the table

RUNTIME: 
Approx. 1 min

******************************************************************************************************************/

-- Create dbo.tblCustomerRoleDim

/*
SELECT DISTINCT 
       s.acct_cust_role_id AS cust_role
INTO dbo.tblCustomerRoleDim
  FROM dbo.stg_p1 AS s;

ALTER TABLE dbo.tblCustomerRoleDim
ADD cust_role_desc VARCHAR(50);
*/

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblCustomerRoleDim]    Script Date: 11/11/2020 10:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCustomerRoleDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblCustomerRoleDim]
GO

/****** Object:  Table [dbo].[tblCustomerRoleDim]    Script Date: 11/11/2020 10:45:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCustomerRoleDim](
	[cust_role] [smallint] NOT NULL,
 CONSTRAINT [PK_tblCustomerRoleDim] PRIMARY KEY CLUSTERED 
(
	[cust_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO