/*****************************************************************************************************************
NAME:    dbo.tblAreaDim.sql
PURPOSE: Create dbo.tblAreaDim

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

-- Create dbo.tblAreaDim
/*
SELECT DISTINCT 
       s.acct_area_id AS area_id
INTO dbo.tblAreaDim
  FROM dbo.stg_p1 AS s;

ALTER TABLE dbo.tblAreaDim
ADD area_desc VARCHAR(50);
*/

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblAreaDim]    Script Date: 11/11/2020 10:42:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAreaDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblAreaDim]
GO

/****** Object:  Table [dbo].[tblAreaDim]    Script Date: 11/11/2020 10:42:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAreaDim](
	[area_id] [int] NOT NULL,
 CONSTRAINT [PK_tblAreaDim] PRIMARY KEY CLUSTERED 
(
	[area_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
