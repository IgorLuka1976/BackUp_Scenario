# BackUp_Scenario
Backup datebase scenario for a large, mission-critical, 24x7 database 
and  Recovery Point Objective (RPO) = 5min
with file names for differential and incremental backups, that include the datenow-date of backup

This scenario consists of 3 steps:
   1.Full database backup at 03:00 every Sunday
   2.A differential backup at the end of each day except Sunday.are These backups are used to minimize the amount of storage consumed by backups.
   3.Incremental backups every 5 minutes. For this target is used transaction log backups,which allow you to recover to a point-in-time and only lose 5 minutes worth of      data
   
   The scenario can be implemented using a Job or Maintenance Plan.

Details instruction: https://docs.google.com/document/d/1ijLSl24NA11PLPKwkk2gybpQNPpsOOzjNw9DwOQlX4A/edit?usp=sharing
