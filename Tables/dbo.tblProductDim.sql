/*****************************************************************************************************************
NAME:    dbo.tblProductDim.sql
PURPOSE: Create dbo.tblProductDim.sql

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

-- Create dbo.tblProductDim
/*
SELECT DISTINCT 
       s.prod_id
INTO dbo.tblProductDim
  FROM dbo.stg_p1 AS s;

ALTER TABLE dbo.tblProductDim
ADD prod_name VARCHAR(50);
*/

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblProductDim]    Script Date: 11/11/2020 10:46:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProductDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblProductDim]
GO

/****** Object:  Table [dbo].[tblProductDim]    Script Date: 11/11/2020 10:46:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblProductDim](
	[prod_id] [smallint] NOT NULL,
 CONSTRAINT [PK_tblProductDim] PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO