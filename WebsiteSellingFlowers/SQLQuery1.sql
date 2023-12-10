/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[available]
      ,[createdate]
      ,[name]
      ,[photo]
      ,[price]
  FROM [ASMJava5].[dbo].[products]