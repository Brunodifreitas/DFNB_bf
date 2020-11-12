/*****************************************************************************************************************
NAME:    dbo.tblRegionDim.sql
PURPOSE: Create dbo.tblRegionDim table

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

-- Create dbo.tblRegionDim
/*
SELECT DISTINCT 
       s.acct_region_id AS region_id
INTO dbo.tblRegionDim
  FROM dbo.stg_p1 AS s;

ALTER TABLE dbo.tblRegionDim
ADD region_desc VARCHAR(50);
*/

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblRegionDim]    Script Date: 11/11/2020 10:46:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRegionDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblRegionDim]
GO

/****** Object:  Table [dbo].[tblRegionDim]    Script Date: 11/11/2020 10:46:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblRegionDim](
	[region_id] [int] NOT NULL,
 CONSTRAINT [PK_tblRegionDim] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO