/*****************************************************************************************************************
NAME:    dbo.tblBranchDim.sql
PURPOSE: Create dbo.tblBranchDim table

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

-- Create dbo.tblBranchDim
/*
SELECT DISTINCT 
       s.acct_branch_id AS branch_id
	 , s.acct_branch_code AS branch_code
	 , s.acct_branch_desc AS branch_desc
	 , s.acct_branch_add_id AS add_id
	 , s.acct_area_id AS area_id
	 , s.acct_region_id AS region_id
INTO dbo.tblBranchDim
  FROM dbo.stg_p1 AS s;
*/

  USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblBranchDim]    Script Date: 11/11/2020 10:43:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblBranchDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblBranchDim]
GO

/****** Object:  Table [dbo].[tblBranchDim]    Script Date: 11/11/2020 10:43:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBranchDim](
	[branch_id] [smallint] NOT NULL,
	[branch_code] [varchar](5) NOT NULL,
	[branch_desc] [varchar](100) NOT NULL,
	[add_id] [int] NOT NULL,
	[area_id] [int] NOT NULL,
	[region_id] [int] NOT NULL,
 CONSTRAINT [PK_tblBranchDim] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
