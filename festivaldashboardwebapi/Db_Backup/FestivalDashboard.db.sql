BEGIN TRANSACTION;
DROP TABLE IF EXISTS `__EFMigrationsHistory`;
CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
	`MigrationId`	TEXT NOT NULL,
	`ProductVersion`	TEXT NOT NULL,
	CONSTRAINT `PK___EFMigrationsHistory` PRIMARY KEY(`MigrationId`)
);
INSERT INTO `__EFMigrationsHistory` (MigrationId,ProductVersion) VALUES ('20180824013054_InitialMigration','2.1.1-rtm-30846');
DROP TABLE IF EXISTS `Venues`;
CREATE TABLE IF NOT EXISTS `Venues` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Name`	TEXT
);
INSERT INTO `Venues` (Id,Name) VALUES (1,'Open Air');
INSERT INTO `Venues` (Id,Name) VALUES (2,'Grand Palais');
INSERT INTO `Venues` (Id,Name) VALUES (3,'Palais Phocéen');
INSERT INTO `Venues` (Id,Name) VALUES (4,'Not set yet');
DROP TABLE IF EXISTS `SoundChecks`;
CREATE TABLE IF NOT EXISTS `SoundChecks` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`ArtistId`	INTEGER NOT NULL,
	`DayId`	INTEGER NOT NULL,
	`VenueId`	INTEGER NOT NULL,
	`Start`	TEXT,
	`End`	TEXT,
	CONSTRAINT `FK_SoundChecks_Artists_ArtistId` FOREIGN KEY(`ArtistId`) REFERENCES `Artists`(`Id`) ON DELETE CASCADE
);
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (121,2,1,3,'2018-09-30 18:00:51','2018-09-30 18:30:05');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (122,3,1,3,'2018-09-30 16:45:00','2018-09-30 17:30:00');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (140,4,1,3,'2018-09-30 15:15:22','2018-09-30 16:15:31');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (151,1,1,3,'2018-09-30 19:00:23','2018-09-30 19:30:37');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (175,48,4,4,NULL,NULL);
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (177,50,4,4,NULL,NULL);
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (179,52,4,4,NULL,NULL);
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (180,5,1,3,'2018-10-01 01:40:24','2018-10-01 01:45:38');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (182,7,2,3,'2018-09-30 17:15:15','2018-09-30 17:45:24');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (183,8,2,3,'2018-09-30 21:45:32','2018-09-30 22:30:44');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (185,10,2,3,'2018-10-01 01:00:17','2018-10-01 01:15:23');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (187,12,1,2,'2018-09-30 18:45:44','2018-09-30 20:45:55');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (191,13,1,2,'2018-09-30 22:55:49','2018-09-30 23:00:04');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (192,14,1,2,'2018-10-01 00:25:45','2018-10-01 00:30:54');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (193,15,1,2,'2018-10-01 01:55:17','2018-10-01 02:00:26');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (194,16,2,2,'2018-09-30 18:15:51','2018-09-30 19:15:00');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (195,17,2,2,'2018-09-30 16:15:37','2018-09-30 17:45:56');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (196,18,2,2,'2018-10-01 00:10:06','2018-10-01 00:15:17');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (198,20,2,1,'2018-10-01 02:55:02','2018-10-01 03:00:11');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (200,22,1,1,'2018-09-30 14:15:19','2018-09-30 16:15:30');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (201,23,1,1,'2018-09-30 11:15:13','2018-09-30 13:45:32');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (202,24,2,1,'2018-09-30 16:40:14','2018-09-30 17:30:21');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (203,25,2,1,'2018-09-30 19:05:12','2018-09-30 19:30:17');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (204,26,2,1,'2018-09-30 14:30:31','2018-09-30 15:30:20');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (205,27,2,1,'2018-09-30 15:50:02','2018-09-30 16:20:09');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (206,21,1,1,'2018-09-30 16:45:17','2018-09-30 17:45:24');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (207,6,2,3,'2018-09-30 18:15:00','2018-09-30 18:45:07');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (208,19,2,2,'2018-10-01 01:25:58','2018-10-01 01:30:09');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (209,9,2,3,'2018-09-30 15:45:58','2018-09-30 16:45:05');
INSERT INTO `SoundChecks` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (210,11,2,3,'2018-10-01 02:25:47','2018-10-01 02:30:54');
DROP TABLE IF EXISTS `Shows`;
CREATE TABLE IF NOT EXISTS `Shows` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`ArtistId`	INTEGER NOT NULL,
	`DayId`	INTEGER NOT NULL,
	`VenueId`	INTEGER NOT NULL,
	`Start`	TEXT,
	`End`	TEXT,
	CONSTRAINT `FK_Shows_Artists_ArtistId` FOREIGN KEY(`ArtistId`) REFERENCES `Artists`(`Id`) ON DELETE CASCADE
);
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (121,2,1,3,'2018-09-30 21:45:14','2018-09-30 22:30:56');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (122,3,1,3,'2018-09-30 23:00:31','2018-10-01 00:00:38');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (140,4,1,3,'2018-10-01 00:30:06','2018-10-01 01:30:24');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (151,1,1,3,'2018-09-30 20:30:04','2018-09-30 21:15:05');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (175,48,4,4,NULL,NULL);
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (177,50,4,4,NULL,NULL);
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (179,52,4,4,NULL,NULL);
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (180,5,1,3,'2018-10-01 01:45:06','2018-10-01 03:00:20');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (182,7,2,3,'2018-09-30 20:45:00','2018-09-30 21:30:30');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (183,8,2,3,'2018-09-30 22:30:24','2018-09-30 23:30:32');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (185,10,2,3,'2018-10-01 01:15:33','2018-10-01 02:30:44');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (187,12,1,2,'2018-09-30 21:50:00','2018-09-30 22:50:08');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (191,13,1,2,'2018-09-30 23:00:25','2018-10-01 00:30:34');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (192,14,1,2,'2018-10-01 00:30:52','2018-10-01 02:00:59');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (193,15,1,2,'2018-10-01 02:00:25','2018-10-01 03:30:34');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (194,16,2,2,'2018-09-30 20:30:02','2018-09-30 21:30:10');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (195,17,2,2,'2018-09-30 22:00:53','2018-09-30 23:00:02');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (196,18,2,2,'2018-10-01 00:15:17','2018-10-01 01:15:26');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (198,20,2,1,'2018-10-01 03:00:34','2018-10-01 05:00:43');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (200,22,1,1,'2018-09-30 21:00:16','2018-09-30 22:30:25');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (201,23,1,1,'2018-09-30 23:00:36','2018-10-01 00:00:49');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (202,24,2,1,'2018-09-30 18:15:15','2018-09-30 19:00:22');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (203,25,2,1,'2018-09-30 19:30:11','2018-09-30 20:30:20');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (204,26,2,1,'2018-09-30 21:00:47','2018-09-30 22:00:57');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (205,27,2,1,'2018-09-30 22:30:49','2018-10-01 00:00:57');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (206,21,1,1,'2018-09-30 18:40:28','2018-09-30 20:30:36');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (207,6,2,3,'2018-09-30 19:45:00','2018-09-30 20:15:00');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (208,19,2,2,'2018-10-01 01:30:41','2018-10-01 03:00:46');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (209,9,2,3,'2018-10-01 00:00:29','2018-10-01 01:00:36');
INSERT INTO `Shows` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (210,11,2,3,'2018-10-01 02:30:51','2018-10-01 04:00:58');
DROP TABLE IF EXISTS `SetUpWings`;
CREATE TABLE IF NOT EXISTS `SetUpWings` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`ArtistId`	INTEGER NOT NULL,
	`DayId`	INTEGER NOT NULL,
	`VenueId`	INTEGER NOT NULL,
	`Start`	TEXT,
	`End`	TEXT,
	CONSTRAINT `FK_SetUpWings_Artists_ArtistId` FOREIGN KEY(`ArtistId`) REFERENCES `Artists`(`Id`) ON DELETE CASCADE
);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (121,2,1,3,'2018-09-30 16:45:29','2018-09-30 17:30:40');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (122,3,1,3,'2018-09-30 15:30:49','2018-09-30 16:15:58.548');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (140,4,1,3,NULL,NULL);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (151,1,1,3,'2018-09-30 17:45:41','2018-09-30 18:30:46');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (175,48,4,4,NULL,NULL);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (177,50,4,4,NULL,NULL);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (179,52,4,4,NULL,NULL);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (180,5,1,3,'2018-10-01 00:30:58','2018-10-01 01:30:08');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (182,7,2,3,'2018-09-30 16:15:00','2018-09-30 16:45:08');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (183,8,2,3,'2018-09-30 20:30:11','2018-09-30 21:30:20');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (185,10,2,3,'2018-09-30 22:30:20','2018-10-01 00:00:47');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (187,12,1,2,NULL,NULL);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (191,13,1,2,'2018-09-30 22:00:07','2018-09-30 22:50:17');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (192,14,1,2,'2018-09-30 23:30:28','2018-10-01 00:30:37');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (193,15,1,2,'2018-10-01 01:00:01','2018-10-01 02:00:08');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (194,16,2,2,'2018-09-30 16:45:37','2018-09-30 17:45:44');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (195,17,2,2,NULL,NULL);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (196,18,2,2,'2018-09-30 22:00:51','2018-09-30 23:00:58');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (198,20,2,1,'2018-10-01 02:00:10','2018-10-01 03:00:17');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (200,22,1,1,'2018-09-30 12:15:31','2018-09-30 13:45:11');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (201,23,1,1,NULL,NULL);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (202,24,2,1,'2018-09-30 15:30:49','2018-09-30 16:20:56');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (203,25,2,1,'2018-09-30 18:00:44','2018-09-30 19:00:52');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (204,26,2,1,NULL,NULL);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (205,27,2,1,'2018-09-30 14:30:17','2018-09-30 15:30:29');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (206,21,1,1,'2018-09-30 15:15:01','2018-09-30 16:15:08');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (207,6,2,3,'2018-09-30 17:15:36','2018-09-30 17:45:49');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (208,19,2,2,'2018-10-01 00:00:00','2018-10-01 01:00:00');
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (209,9,2,3,NULL,NULL);
INSERT INTO `SetUpWings` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (210,11,2,3,'2018-10-01 01:30:31','2018-10-01 02:30:39');
DROP TABLE IF EXISTS `Photos`;
CREATE TABLE IF NOT EXISTS `Photos` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Url`	TEXT,
	`DateAdded`	TEXT NOT NULL,
	`PublicId`	TEXT,
	`UserId`	INTEGER NOT NULL,
	CONSTRAINT `FK_Photos_AspNetUsers_UserId` FOREIGN KEY(`UserId`) REFERENCES `AspNetUsers`(`Id`) ON DELETE CASCADE
);
INSERT INTO `Photos` (Id,Url,DateAdded,PublicId,UserId) VALUES (2,'http://res.cloudinary.com/zulcloud/image/upload/v1535752855/yglft01vbbvuwbcscm6b.jpg','2018-09-01 00:00:54.6668473','yglft01vbbvuwbcscm6b',1);
DROP TABLE IF EXISTS `GetIns`;
CREATE TABLE IF NOT EXISTS `GetIns` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`ArtistId`	INTEGER NOT NULL,
	`DayId`	INTEGER NOT NULL,
	`VenueId`	INTEGER NOT NULL,
	`Start`	TEXT,
	`End`	TEXT,
	CONSTRAINT `FK_GetIns_Artists_ArtistId` FOREIGN KEY(`ArtistId`) REFERENCES `Artists`(`Id`) ON DELETE CASCADE
);
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (121,2,1,3,'2018-09-30 16:15:09','2018-09-30 16:30:18');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (122,3,1,3,'2018-09-30 15:00:18','2018-09-30 15:15:30');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (140,4,1,3,'2018-09-30 14:15:36','2018-09-30 14:30:53');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (151,1,1,3,'2018-09-30 17:15:36','2018-09-30 17:30:05');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (175,48,4,4,NULL,NULL);
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (177,50,4,4,NULL,NULL);
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (179,52,4,4,NULL,NULL);
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (180,5,1,3,'2018-10-01 00:00:34','2018-10-01 00:15:46');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (182,7,2,3,'2018-09-30 15:45:36','2018-09-30 16:00:47');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (183,8,2,3,'2018-09-30 20:00:46','2018-09-30 20:15:55');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (185,10,2,3,'2018-09-30 22:15:58','2018-09-30 22:30:04');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (187,12,1,2,'2018-09-30 18:15:15','2018-09-30 18:30:28');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (191,13,1,2,'2018-09-30 21:30:44','2018-09-30 21:45:58');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (192,14,1,2,'2018-09-30 23:00:10','2018-09-30 23:15:17');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (193,15,1,2,'2018-10-01 00:30:44','2018-10-01 00:45:52');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (194,16,2,2,'2018-09-30 16:15:20','2018-09-30 16:30:27');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (195,17,2,2,'2018-09-30 15:45:18','2018-09-30 16:00:25');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (196,18,2,2,'2018-09-30 21:30:33','2018-09-30 21:45:42');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (198,20,2,1,'2018-10-01 01:30:53','2018-10-01 01:45:01');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (200,22,1,1,'2018-09-30 11:45:28','2018-09-30 12:00:36');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (201,23,1,1,'2018-09-30 10:45:56','2018-09-30 11:00:02');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (202,24,2,1,'2018-09-30 15:00:32','2018-09-30 15:15:40');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (203,25,2,1,'2018-09-30 17:30:31','2018-09-30 17:45:37');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (204,26,2,1,'2018-09-30 12:30:09','2018-09-30 12:45:17');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (205,27,2,1,'2018-09-30 14:15:04','2018-09-30 14:30:09');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (206,21,1,1,'2018-09-30 14:45:44','2018-09-30 15:00:52');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (207,6,2,3,'2018-09-30 16:45:32','2018-09-30 17:00:41');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (208,19,2,2,'2018-09-30 23:30:56','2018-09-30 23:45:03');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (209,9,2,3,'2018-09-30 15:15:33','2018-09-30 15:30:43');
INSERT INTO `GetIns` (Id,ArtistId,DayId,VenueId,Start,End) VALUES (210,11,2,3,'2018-10-01 01:00:15','2018-10-01 01:15:24');
DROP TABLE IF EXISTS `Days`;
CREATE TABLE IF NOT EXISTS `Days` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`DayNum`	TEXT NOT NULL
);
INSERT INTO `Days` (Id,DayNum) VALUES (1,'1');
INSERT INTO `Days` (Id,DayNum) VALUES (2,'2');
INSERT INTO `Days` (Id,DayNum) VALUES (3,'3');
INSERT INTO `Days` (Id,DayNum) VALUES (4,'Not set yet');
DROP TABLE IF EXISTS `AspNetUsers`;
CREATE TABLE IF NOT EXISTS `AspNetUsers` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`UserName`	TEXT,
	`NormalizedUserName`	TEXT,
	`Email`	TEXT,
	`NormalizedEmail`	TEXT,
	`EmailConfirmed`	INTEGER NOT NULL,
	`PasswordHash`	TEXT,
	`SecurityStamp`	TEXT,
	`ConcurrencyStamp`	TEXT,
	`PhoneNumber`	TEXT,
	`PhoneNumberConfirmed`	INTEGER NOT NULL,
	`TwoFactorEnabled`	INTEGER NOT NULL,
	`LockoutEnd`	TEXT,
	`LockoutEnabled`	INTEGER NOT NULL,
	`AccessFailedCount`	INTEGER NOT NULL,
	`Role`	TEXT
);
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (1,'Luz','LUZ','luzspencer@geeknet.com','LUZSPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEOhlMw2fO7ZMcQXqhAW/7ViODtBgttc65VXNVkUc6JGwVHnUr1pZrsFt2NN8OJDdOA==','2YPTYICEC5U3UJUKJJDSFNU7Y7TOIBXV','8bbb3bb7-9367-4b70-863f-82c755100afb',NULL,0,0,NULL,1,0,'admin');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (2,'Rosella','ROSELLA','rosellaspencer@geeknet.com','ROSELLASPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEJw33KKD0DJcYxAFgqOJ1WKsOitPFU7hDE+XI+dyq0krWAyZZG/2kIN4xTkef+1BmQ==','HGRRC5RRJCKCHD7XAGOLS6DS3CV4RS7G','00af0253-f5d1-473a-aec7-bee74db869f6',NULL,0,0,NULL,1,0,'admin');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (3,'Karyn','KARYN','karynspencer@geeknet.com','KARYNSPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEBtJFJtodM4A6sFEZd/osGQnE/5VlMoL0oDwphfvhwueAiNxe/X6rhJIuFXJ2U7N4g==','F34AIMIROSAHJPDKBPNU4FBGLZIJILTR','f3b7b3e1-ce39-4cbe-9db9-36408853aa41',NULL,0,0,NULL,1,0,'admin');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (4,'Hilary','HILARY','hilaryspencer@geeknet.com','HILARYSPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEDaNvBHmMy5eEBv1EVS6mN5f3Uftj43EhOTux+GYjZ+DgrHkaZfTukuj+6OED9nyMw==','YFVO55Z5QQDUOTCEUWY4JGCMS3Z4NLWK','a6adc063-4be1-4495-8ef5-ad8d4f49d3d1',NULL,0,0,NULL,1,0,'admin');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (5,'Rhonda','RHONDA','rhondaspencer@geeknet.com','RHONDASPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEHBNbwxfSwFI9FXppJWYpp+mNi0kPk55EITchmnGfKBmeP7nyou+/NxPMprU2ry8Ow==','DPQFX7PLY74WWPQSK2KZCETIWP5HGD62','efde8b5c-1258-47b8-a728-2b160b2c5293',NULL,0,0,NULL,1,0,'admin');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (6,'Elvira','ELVIRA','elviraspencer@geeknet.com','ELVIRASPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEN09GapRJPZX++0a1T18+ksBXbhtMieDZLZUXdxyyL09S8JOWqLjk3rcu1f20mV1vQ==','OTBR7PY5NMM4UJA3WJ5KU6MSUBBDTQDJ','7d81cbd8-54a1-4bd6-931a-985cd61a777d',NULL,0,0,NULL,1,0,'runner');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (7,'Winnie','WINNIE','winniespencer@geeknet.com','WINNIESPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEDL5qK12oXl+CEs68CMRYO1pEdjBoBivEN1SqbadgsVizt4aesw5bIHZC8f5tjPcyw==','ZVBYIRX3WS3P5SIKH6MF6LGEAY4WZ4PK','dca57cce-3b2b-408e-b8f0-6baedab545d5',NULL,0,0,NULL,1,0,'runner');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (8,'Janell','JANELL','janellspencer@geeknet.com','JANELLSPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEKhYpxxEJ0Tc/Sx+6sm2BJuQoRj/bzbSvzHVzyqupzB6DmHVVxDT+fxf5dZQUYTwuA==','GNIDOXPGN6M2XJIPW2MUCWVVRKKB475C','a339c345-cc33-44b8-b297-78bfe5cdb3bc',NULL,0,0,NULL,1,0,'runner');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (9,'Mendez','MENDEZ','mendezspencer@geeknet.com','MENDEZSPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAELy5KFc06404QTNLoOOgL+cIV+lLNkUy9WfJ3TYb0sEiMDhbcJpXakrbhoQIxCXzWQ==','4RC2UOHD3ISH46NO63ZRE5N7THDOE5C6','8be2f858-9297-4803-b1ea-eb4a4a305231',NULL,0,0,NULL,1,0,'runner');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (10,'Dixon','DIXON','dixonspencer@geeknet.com','DIXONSPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEJwvBTtjauL43iuPyedy6L8EpeKAnMXj6O56ed0N+XTIzM9bQqTSFmMMHcmXTgwVFw==','A7GMZCWCJMTHHJB4PFJPQDRKFSG2O5W2','7d887c35-5f1a-4440-9562-d5038b67558a',NULL,0,0,NULL,1,0,'runner');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (11,'Weiss','WEISS','weissspencer@geeknet.com','WEISSSPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEI1nJCriDXiyfpv79faMdbnROA10DADoxsk7IOTRLkx/nh52gD6H7KEs6Y1rrTDrVQ==','MWMMP7LEW2LH4LZ2AUJOS7SEXNJIOSOQ','3ae7f363-f2ed-4da2-a326-409f70e89d5c',NULL,0,0,NULL,1,0,'runner');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (12,'Lula','LULA','lulaspencer@geeknet.com','LULASPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEDsOa7YU0FYqoNZpesXsaGbLhTBRd7P1d++HSkOlwj8M76vkt6gwIIn2XcPTPAVDYA==','34AZX4EDGGA36E3PK5TWSDK34IMH2YNM','be2885d9-5965-4eea-8f63-c245c35164fe',NULL,0,0,NULL,1,0,'host');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (13,'Gladys','GLADYS','gladysspencer@geeknet.com','GLADYSSPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAELiHTZEd7yM8oE2uLDy4OZrt2P0ZfTjDh5wg5qJFRZiQbdE2RbfkzYMcH92xstgGxw==','POCCRY7CTOLLBSORK3DIVKMYZQRZXBFN','940b9627-1a52-4be6-bc9b-7774590b87b6',NULL,0,0,NULL,1,0,'host');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (14,'Walker','WALKER','mccartyspencer@geeknet.com','MCCARTYSPENCER@GEEKNET.COM',0,'AQAAAAEAACcQAAAAEHDBKKOkfQPsEJNcgjhs0n0Rw79JAwkSY51VflMk6AVbsonHwE6E11Z+g3XAljk80A==','YEH3QZLX7NXVFKASEXNAEI7QGS5GWBL5','7bef2d39-47c1-47e8-82e5-630b947a1095',NULL,0,0,NULL,1,0,'host');
INSERT INTO `AspNetUsers` (Id,UserName,NormalizedUserName,Email,NormalizedEmail,EmailConfirmed,PasswordHash,SecurityStamp,ConcurrencyStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEnd,LockoutEnabled,AccessFailedCount,Role) VALUES (15,'zu','ZU','zulihan@gmail.com','ZULIHAN@GMAIL.COM',0,'AQAAAAEAACcQAAAAEBvBaMoPCODZM79bYNTmZffPhvSRrYcucNLmhDUKvqbpaNXvYeML4D+U5W+cb51NGw==','D7DZGOPQZ2VVLFBCLVYF65UU5W7RL4QI','84db29cf-1705-442f-b802-c1318e0f10a1','0618015477',0,0,NULL,1,0,'host');
DROP TABLE IF EXISTS `AspNetUserTokens`;
CREATE TABLE IF NOT EXISTS `AspNetUserTokens` (
	`UserId`	INTEGER NOT NULL,
	`LoginProvider`	TEXT NOT NULL,
	`Name`	TEXT NOT NULL,
	`Value`	TEXT,
	CONSTRAINT `PK_AspNetUserTokens` PRIMARY KEY(`UserId`,`LoginProvider`,`Name`),
	CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY(`UserId`) REFERENCES `AspNetUsers`(`Id`) ON DELETE CASCADE
);
DROP TABLE IF EXISTS `AspNetUserRoles`;
CREATE TABLE IF NOT EXISTS `AspNetUserRoles` (
	`RoleId`	INTEGER NOT NULL,
	`UserId`	INTEGER NOT NULL,
	CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY(`UserId`) REFERENCES `AspNetUsers`(`Id`) ON DELETE CASCADE,
	CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY(`RoleId`) REFERENCES `AspNetRoles`(`Id`) ON DELETE CASCADE,
	CONSTRAINT `PK_AspNetUserRoles` PRIMARY KEY(`UserId`,`RoleId`)
);
DROP TABLE IF EXISTS `AspNetUserLogins`;
CREATE TABLE IF NOT EXISTS `AspNetUserLogins` (
	`LoginProvider`	TEXT NOT NULL,
	`ProviderKey`	TEXT NOT NULL,
	`ProviderDisplayName`	TEXT,
	`UserId`	INTEGER NOT NULL,
	CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY(`UserId`) REFERENCES `AspNetUsers`(`Id`) ON DELETE CASCADE,
	CONSTRAINT `PK_AspNetUserLogins` PRIMARY KEY(`LoginProvider`,`ProviderKey`)
);
DROP TABLE IF EXISTS `AspNetUserClaims`;
CREATE TABLE IF NOT EXISTS `AspNetUserClaims` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`UserId`	INTEGER NOT NULL,
	`ClaimType`	TEXT,
	`ClaimValue`	TEXT,
	CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY(`UserId`) REFERENCES `AspNetUsers`(`Id`) ON DELETE CASCADE
);
DROP TABLE IF EXISTS `AspNetRoles`;
CREATE TABLE IF NOT EXISTS `AspNetRoles` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Name`	TEXT,
	`NormalizedName`	TEXT,
	`ConcurrencyStamp`	TEXT
);
DROP TABLE IF EXISTS `AspNetRoleClaims`;
CREATE TABLE IF NOT EXISTS `AspNetRoleClaims` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`RoleId`	INTEGER NOT NULL,
	`ClaimType`	TEXT,
	`ClaimValue`	TEXT,
	CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY(`RoleId`) REFERENCES `AspNetRoles`(`Id`) ON DELETE CASCADE
);
DROP TABLE IF EXISTS `Artists`;
CREATE TABLE IF NOT EXISTS `Artists` (
	`Id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Name`	TEXT,
	`PhotoUrl`	TEXT,
	`ContactName`	TEXT,
	`ContactPhone`	TEXT,
	`ContactEmail`	TEXT,
	`OnRoad`	INTEGER NOT NULL,
	`OnStage`	INTEGER NOT NULL,
	`DayId`	INTEGER NOT NULL,
	`VenueId`	INTEGER NOT NULL
);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (1,'lord esperanza','https://risibank.fr/cache/stickers/d594/59429-full.png','johnyyyy','0654650000','lordyyyyyy@esperanza.com',6,2,1,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (2,'biffty & dj weedim','http://www.printemps-bourges.com/wmedias/original/pdb18/programme/artistes/biffty__weedim/pdb18_site_artistes_BifftyDjWeedim-_1280x660.jpg','john doe','0600000000','contact@gmail.com',5,2,1,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (3,'ho99o9','http://78.media.tumblr.com/a5f929b5aed31a5f96b2caa24bad2e44/tumblr_inline_p625krVD5G1sitizh_540.png','john doe','0600000000','contact@gmail.com',5,2,1,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (4,'gangue','http://mixmag.fr/assets/uploads/images/_fullX2/GANGUE-Antoine-Ott-3.jpg','john doe','0600000000','contact@gmail.com',5,2,1,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (5,'myth syzer','https://images.sneakersaddict.com/images//myth-syzer-2018-1000x562.png','john doe','0600000000','contact@gmail.com',5,2,1,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (6,'wilko & ndy','https://www.trends.fr/wp-content/uploads/2018/04/wilkoetndy-trends.png','john doe','0600000000','contact@gmail.com',5,2,2,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (7,'j.i.d & earthgang','https://ssli.ulximg.com/image/740x493/gallery/1519150337_9d28fc91cc76555d0251102949635e2e.jpg/d5a000319604ec8f0d99e265a49832d6/1519150337_4402141141fce6142025f02d7c739c7e.jpg','john doe','0600000000','contact@gmail.com',5,3,2,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (8,'moha la squale','http://www.sinoxdvd.com/wp-content/uploads/2018/06/sans-titre-1-114.jpg','john doe','0600000000','contact@gmail.com',10,4,2,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (9,'ross from friends','https://bandcampblog.files.wordpress.com/2016/08/ross_from_friends-600-1.jpg?w=800','john doe','0600000000','contact@gmail.com',3,3,2,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (10,'bicep','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR3HetpmCWNynqhjeMfooLvzFfF4kY8FvbSSPHT1MGCB0ti-X1','john doe','0600000000','contact@gmail.com',5,2,2,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (11,'ben ufo','https://www.marsatac.com/wp-content/uploads/2018/02/Ben_Ufo_by_Will_Bankhead-web-580x380.jpg','john doe','0600000000','contact@gmail.com',1,1,2,3);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (12,'chloé','https://www.marsatac.com/wp-content/uploads/2018/02/chloe-web-580x380.jpg','john doe','0600000000','contact@gmail.com',2,1,1,2);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (13,'amélie lens','https://www.marsatac.com/wp-content/uploads/2018/02/Amelie_Lens_by_Eva_Vlonk-web-580x380.jpg','john doe','0600000000','contact@gmail.com',2,1,1,2);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (14,'sam paganini','https://www.ravejungle.com/wp-content/uploads/2017/08/Sam-Paganini-ravejungle.jpg','john doe','0600000000','contact@gmail.com',3,1,1,2);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (15,'boris brejcha','https://static1.squarespace.com/static/52a9de2de4b0d1de7d8cf377/t/5a00da8c4192027137d0ccef/1510005412946/KIDKUTSMEDIA-6548.jpg','john doe','0600000000','contact@gmail.com',3,1,1,2);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (16,'kokoko!','http://pan-african-music.com/wp-content/uploads/2018/06/Kokoko.jpg','john doe','0600000000','contact@gmail.com',6,5,2,2);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (17,'nasser','http://www.kosmic-webzine.com/wp-content/uploads/2018/04/Nasser-1.jpg','john doe','0600000000','contact@gmail.com',4,2,2,2);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (18,'hungry 5','http://d3s4rtoucjtwa6.cloudfront.net/artistes/1500-1518009606.jpg','john doe','0600000000','contact@gmail.com',5,4,2,2);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (19,'blawan','https://www.residentadvisor.net/images/news/2017/blawan-remixing-lucy-on-zehnin-october-2017.jpg','john doe','0600000000','contact@gmail.com',6,3,2,2);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (20,'nina kraviz','https://www.elnacional.cat/uploads/s1/18/69/31/8/spi3747_6980_ninakraviz_credit_paola_kudacki_3_1_630x630.png','john doe','0600000000','contact@gmail.com',2,1,2,1);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (21,'lomepal & roméo elvis','https://moustique.cdnartwhere.eu/sites/default/files/styles/large/public/field/image/illu_romeo.jpg?itok=JK7MPPyD','john doe','0600000000','contact@gmail.com',6,3,1,1);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (22,'iam','https://i.scdn.co/image/ce03b673d12a1b23eecc4c3f790e36ea6005aa42','john doe','0600000000','contact@gmail.com',11,6,1,1);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (23,'petit biscuit','http://mtv.mtvnimages.com/uri/mgid:file:gsp:scenic:/international/mtvema/2017/images/nominees/PETIT_BISCUIT_1940x720.jpg?quality=0.85&width=1024&height=450&crop=true','john doe','0600000000','contact@gmail.com',2,1,1,1);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (24,'aloha orchestra','http://www.greenroom.fr/wp-content/uploads/2015/07/alohaok.jpg','john doe','0600000000','contact@gmail.com',6,4,2,1);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (25,'rejjie snow','https://www.billboard.com/files/styles/article_main_image/public/media/rejjie-snow-2018-cr-Alexandra-Gavillet-billboard-1548.jpg','john doe','0600000000','contact@gmail.com',3,2,2,1);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (26,'nekfeu','https://mk0bookingagent97efu.kinstacdn.com/wp-content/uploads/2017/08/Nekfeu-Contact-Information.jpg','john doe','0600000000','contact@gmail.com',5,3,2,1);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (27,'paul kalkbrenner','https://mixmag.net/assets/uploads/images/_columns2/PaulKAlbum-Artwork.jpg','john doe','0600000000','contact@gmail.com',3,1,2,1);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (48,'fd','','','0618015477','zulihan@gmail.com',0,0,4,4);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (50,'hgf','','','0618015477','zulihan@gmail.com',0,0,4,4);
INSERT INTO `Artists` (Id,Name,PhotoUrl,ContactName,ContactPhone,ContactEmail,OnRoad,OnStage,DayId,VenueId) VALUES (52,'bc','','','0618015477','zulihan@gmail.com',0,0,4,4);
DROP INDEX IF EXISTS `UserNameIndex`;
CREATE UNIQUE INDEX IF NOT EXISTS `UserNameIndex` ON `AspNetUsers` (
	`NormalizedUserName`
);
DROP INDEX IF EXISTS `RoleNameIndex`;
CREATE UNIQUE INDEX IF NOT EXISTS `RoleNameIndex` ON `AspNetRoles` (
	`NormalizedName`
);
DROP INDEX IF EXISTS `IX_SoundChecks_ArtistId`;
CREATE UNIQUE INDEX IF NOT EXISTS `IX_SoundChecks_ArtistId` ON `SoundChecks` (
	`ArtistId`
);
DROP INDEX IF EXISTS `IX_Shows_ArtistId`;
CREATE UNIQUE INDEX IF NOT EXISTS `IX_Shows_ArtistId` ON `Shows` (
	`ArtistId`
);
DROP INDEX IF EXISTS `IX_SetUpWings_ArtistId`;
CREATE UNIQUE INDEX IF NOT EXISTS `IX_SetUpWings_ArtistId` ON `SetUpWings` (
	`ArtistId`
);
DROP INDEX IF EXISTS `IX_Photos_UserId`;
CREATE UNIQUE INDEX IF NOT EXISTS `IX_Photos_UserId` ON `Photos` (
	`UserId`
);
DROP INDEX IF EXISTS `IX_GetIns_ArtistId`;
CREATE UNIQUE INDEX IF NOT EXISTS `IX_GetIns_ArtistId` ON `GetIns` (
	`ArtistId`
);
DROP INDEX IF EXISTS `IX_AspNetUserRoles_RoleId`;
CREATE INDEX IF NOT EXISTS `IX_AspNetUserRoles_RoleId` ON `AspNetUserRoles` (
	`RoleId`
);
DROP INDEX IF EXISTS `IX_AspNetUserLogins_UserId`;
CREATE INDEX IF NOT EXISTS `IX_AspNetUserLogins_UserId` ON `AspNetUserLogins` (
	`UserId`
);
DROP INDEX IF EXISTS `IX_AspNetUserClaims_UserId`;
CREATE INDEX IF NOT EXISTS `IX_AspNetUserClaims_UserId` ON `AspNetUserClaims` (
	`UserId`
);
DROP INDEX IF EXISTS `IX_AspNetRoleClaims_RoleId`;
CREATE INDEX IF NOT EXISTS `IX_AspNetRoleClaims_RoleId` ON `AspNetRoleClaims` (
	`RoleId`
);
DROP INDEX IF EXISTS `EmailIndex`;
CREATE INDEX IF NOT EXISTS `EmailIndex` ON `AspNetUsers` (
	`NormalizedEmail`
);
COMMIT;
