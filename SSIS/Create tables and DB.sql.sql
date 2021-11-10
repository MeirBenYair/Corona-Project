CREATE DATABASE [DWHCM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DWHCM', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DWHCM.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DWHCM_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DWHCM_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DWHCM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

USE [DWHCM]
GO


CREATE TABLE [dbo].[Confirmd](
	[Country Region] [varchar](50) NULL,
	[Lat] [varchar](50) NULL,
	[Long] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[value] [varchar](50) NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[Deaths](
	[Country Region] [varchar](50) NULL,
	[Lat] [varchar](50) NULL,
	[Long] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[value] [varchar](50) NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Recovered](
	[Country Region] [varchar](50) NULL,
	[Lat] [varchar](50) NULL,
	[Long] [varchar](50) NULL,
	[date] [varchar](50) NULL,
	[value] [varchar](50) NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]
GO


