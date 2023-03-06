/*******************************************************************
* Script to create Incremential Backup, including the date in the file name
********************************************************************/
------Important with Full recovery model
USE AdventureWorksLT2019
GO

----backup Folder D:\backuptestInc

------Incremential backup with append media


DECLARE @pathBackup  NVARCHAR(100)
SET @pathBackup =  N'D:\backuptestInc\Inc_AdventureWorksLT2019_' + REPLACE(REPLACE(CONVERT(VARCHAR,GETDATE(), 120),':','_'),' ','_') + '.bak'
BACKUP LOG [AdventureWorksLT2019] TO  DISK = @pathBackup WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorksLT2019-Inc Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
