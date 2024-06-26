SELECT TOP (1000) [Id]
      ,[UserName]
      ,[Email]
      ,[Password]
      ,[CreatedDate]
      ,[LasModifiedDate]
  FROM [Bank].[dbo].[User]


  SELECT t1.UserName, t2.FirstName + '' + t2.LastName as FullName FROM [User] t1 LEFT JOIN Dependant t2 ON t1.Id = t2.UserId

  BEGIN TRY
    BEGIN TRANSACTION
    UPDATE Dependant SET RelationShipCode = 'RT001' where Id = 1
	COMMIT 
  END TRY

  BEGIN CATCH
  SELECT ERROR_MESSAGE() as ErrorMessage, @@ROWCOUNT as AFFECTEDROWS
  ROLLBACK
  END CATCH









