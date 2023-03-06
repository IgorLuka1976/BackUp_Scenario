/*******************************************************************
* Script to create Full Backup
********************************************************************/
------Important with Full recovery model
USE AdventureWorksLT2019
GO

----backup Folder D:\backuptestFull

------Full backup with Compress option and overwrite media
BACKUP DATABASE [AdventureWorksLT2019] TO  DISK = N'D:\backuptestFull\AdventureWorksLT2019.bak' WITH NOFORMAT, INIT
              ,  NAME = N'AdventureWorksLT2019-Full Database Backup', SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO
