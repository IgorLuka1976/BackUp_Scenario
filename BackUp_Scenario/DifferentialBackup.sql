/*******************************************************************
* Script to create Differential Backup, including the date in the file name
********************************************************************/
------Important
USE AdventureWorksLT2019
GO

----backup Folder D:\backuptestDif

------Differential backup with Compress option and append media

DECLARE @pathBackup  NVARCHAR(100)
SET @pathBackup =  N'D:\backuptestDif\Dif_AdventureWorksLT2019_' + REPLACE(REPLACE(CONVERT(VARCHAR,GETDATE(), 120),':','_'),' ','_') + '.bak'
BACKUP DATABASE [crm] TO  DISK = @pathBackup WITH  DIFFERENTIAL ,  DESCRIPTION = N'Differential Backup', NOFORMAT
, NOINIT,  NAME = N'AdventureWorksLT2019-Differential Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
