show databases;
show tables;

create database  axc6541;
use axc6541;

drop table `cdc_notif_invalid_phase`;
drop table cdc_notif_invalid_phase;
drop table VACCINE_DISTR;
drop table STATE_DISTR;
drop table FEDERAL;
drop table MANUFACTURED_DOSE;


select * from MANUFACTURED_DOSE;
select * from FEDERAL;
select * from STATE_DISTR;
select * from VACCINE_DISTR;


CREATE TABLE MANUFACTURED_DOSE
(lot_Id INT NOT NULL AUTO_INCREMENT,
date_Manuf DATETIME,
manuf_Name VARCHAR(50) NOT NULL, 
doses_Count INT,
pathogen_Type VARCHAR(50) NOT	 NULL,
protein_Type VARCHAR(50) NOT NULL,
virus_Type VARCHAR(50) NOT NULL, 
rna_Type VARCHAR(50) NOT NULL, 
PRIMARY KEY (lot_Id));

INSERT INTO `MANUFACTURED_DOSE` (`lot_Id`,`date_Manuf`,`manuf_Name`,`doses_Count`,`pathogen_Type`,`protein_Type`,`virus_Type`,`rna_Type`) VALUES (1000,"2021-04-16 19:58:07","CanSino",1994,"path2","","",""),(1001,"2020-10-31 23:58:51","CanSino",3522,"path1","","",""),(1002,"2020-10-14 17:41:49","CanSino",4497,"path3","","",""),(1003,"2020-11-13 19:20:13","CanSino",3331,"path4","","",""),(1004,"2020-10-07 09:56:06","CanSino",4694,"path2","","",""),(1005,"2020-11-21 11:21:07","CanSino",1987,"path4","","",""),(1006,"2020-07-13 02:17:49","CanSino",1978,"path2","","",""),(1007,"2020-12-24 23:52:20","CanSino",1133,"path2","","",""),(1008,"2020-05-15 21:27:33","CanSino",3251,"path3","","",""),(1009,"2020-05-07 14:02:43","CanSino",2256,"path1","","",""),(1010,"2021-03-19 19:05:30","CanSino",2260,"path2","","",""),(1011,"2020-06-03 22:56:10","CanSino",3191,"path3","","",""),(1012,"2020-11-29 18:05:50","CanSino",3817,"path4","","",""),(1013,"2020-06-04 11:15:31","CanSino",4820,"path4","","",""),(1014,"2020-09-23 09:35:30","CanSino",1008,"path1","","",""),(1015,"2020-04-25 04:42:56","CanSino",1148,"path1","","",""),(1016,"2020-04-28 18:56:35","CanSino",4019,"path1","","",""),(1017,"2020-10-05 02:02:11","CanSino",4959,"path2","","",""),(1018,"2020-05-22 20:43:30","CanSino",1241,"path2","","",""),(1019,"2021-02-01 09:21:26","CanSino",1409,"path1","","",""),(1020,"2020-08-12 12:12:01","CanSino",3463,"path4","","",""),(1021,"2020-07-22 09:03:52","CanSino",4618,"path2","","",""),(1022,"2021-03-16 18:33:01","CanSino",1879,"path3","","",""),(1023,"2020-12-31 15:29:30","CanSino",2032,"path2","","",""),(1024,"2021-02-14 16:41:00","CanSino",3432,"path3","","","");
INSERT INTO `MANUFACTURED_DOSE` (`lot_Id`,`date_Manuf`,`manuf_Name`,`doses_Count`,`pathogen_Type`,`protein_Type`,`virus_Type`,`rna_Type`) VALUES (100,"2021-01-15 20:17:27","Moderna",2299,"","","","rna3"),(101,"2020-11-12 14:14:11","Moderna",4713,"","","","rna1"),(102,"2020-11-03 17:35:20","Moderna",1626,"","","","rna2"),(103,"2020-11-21 20:17:51","Moderna",2075,"","","","rna3"),(104,"2020-07-19 12:44:54","Moderna",3089,"","","","rna4"),(105,"2020-08-28 01:17:40","Moderna",1068,"","","","rna2"),(106,"2020-05-16 21:00:40","Moderna",4100,"","","","rna3"),(107,"2020-06-07 14:39:27","Moderna",4166,"","","","rna2"),(108,"2020-07-18 06:34:10","Moderna",4813,"","","","rna3"),(109,"2020-06-25 12:14:15","Moderna",3348,"","","","rna4"),(110,"2020-07-21 05:15:27","Moderna",1265,"","","","rna3"),(111,"2020-12-06 08:31:39","Moderna",3352,"","","","rna1"),(112,"2020-09-13 10:36:46","Moderna",1250,"","","","rna1"),(113,"2020-08-31 13:29:38","Moderna",2003,"","","","rna4"),(114,"2020-05-16 01:01:04","Moderna",3108,"","","","rna4"),(115,"2021-02-18 22:08:27","Moderna",1700,"","","","rna1"),(116,"2021-02-25 19:02:03","Moderna",2200,"","","","rna2"),(117,"2020-09-07 08:01:16","Moderna",4834,"","","","rna1"),(118,"2020-05-10 02:59:40","Moderna",2784,"","","","rna4"),(119,"2020-11-14 06:23:07","Moderna",2388,"","","","rna3"),(120,"2021-02-01 20:22:48","Moderna",2978,"","","","rna3"),(121,"2021-01-20 07:25:31","Moderna",3250,"","","","rna1"),(122,"2020-10-07 16:22:14","Moderna",4826,"","","","rna3"),(123,"2020-12-15 06:29:39","Moderna",4664,"","","","rna1"),(124,"2020-09-15 22:48:46","Moderna",1798,"","","","rna4");
INSERT INTO `MANUFACTURED_DOSE` (`lot_Id`,`date_Manuf`,`manuf_Name`,`doses_Count`,`pathogen_Type`,`protein_Type`,`virus_Type`,`rna_Type`) VALUES (500,"2020-11-09 21:14:39","BioNTech",3320,"","","vir2",""),(501,"2020-12-25 06:21:58","BioNTech",3300,"","","vir4",""),(502,"2021-02-28 14:27:42","BioNTech",1225,"","","vir4",""),(503,"2021-02-15 20:50:16","BioNTech",2356,"","","vir2",""),(504,"2020-11-22 02:06:54","BioNTech",1504,"","","vir1",""),(505,"2021-02-14 23:29:39","BioNTech",2496,"","","vir4",""),(506,"2021-02-13 18:12:22","BioNTech",4867,"","","vir3",""),(507,"2021-02-25 15:19:18","BioNTech",4774,"","","vir3",""),(508,"2020-12-20 20:51:12","BioNTech",1214,"","","vir1",""),(509,"2021-01-07 04:34:55","BioNTech",4550,"","","vir1",""),(510,"2020-10-19 00:57:45","BioNTech",2086,"","","vir1",""),(511,"2021-01-30 17:29:12","BioNTech",1384,"","","vir1",""),(512,"2020-11-21 17:26:45","BioNTech",2417,"","","vir2",""),(513,"2020-11-10 09:41:53","BioNTech",2248,"","","vir4",""),(514,"2021-03-02 20:00:25","BioNTech",3969,"","","vir4",""),(515,"2020-09-29 23:58:06","BioNTech",1158,"","","vir3",""),(516,"2021-04-03 03:01:58","BioNTech",1545,"","","vir3",""),(517,"2021-02-13 12:05:12","BioNTech",2154,"","","vir3",""),(518,"2020-10-04 00:11:47","BioNTech",2464,"","","vir2",""),(519,"2021-04-18 15:51:53","BioNTech",2932,"","","vir4",""),(520,"2021-01-22 10:37:00","BioNTech",2625,"","","vir1",""),(521,"2020-09-03 05:20:10","BioNTech",4022,"","","vir2",""),(522,"2020-12-20 16:52:23","BioNTech",1315,"","","vir3",""),(523,"2020-06-13 21:57:23","BioNTech",3187,"","","vir2",""),(524,"2020-10-10 10:04:43","BioNTech",1361,"","","vir1","");
INSERT INTO `MANUFACTURED_DOSE` (`lot_Id`,`date_Manuf`,`manuf_Name`,`doses_Count`,`pathogen_Type`,`protein_Type`,`virus_Type`,`rna_Type`) VALUES (700,"2021-03-19 13:20:03","Pfizer",1656,"","pro4","",""),(701,"2020-12-09 02:23:06","Pfizer",2401,"","pro3","",""),(702,"2020-12-17 23:53:31","Pfizer",1583,"","pro1","",""),(703,"2020-05-22 20:24:09","Pfizer",3537,"","pro2","",""),(704,"2020-12-24 05:28:36","Pfizer",1567,"","pro3","",""),(705,"2020-10-16 07:33:55","Pfizer",1099,"","pro4","",""),(706,"2020-10-11 11:18:55","Pfizer",3833,"","pro2","",""),(707,"2020-07-25 15:09:16","Pfizer",1912,"","pro2","",""),(708,"2021-04-19 13:38:23","Pfizer",3558,"","pro2","",""),(709,"2020-12-23 03:21:08","Pfizer",3070,"","pro4","",""),(710,"2020-12-29 04:16:53","Pfizer",1384,"","pro2","",""),(711,"2020-08-27 16:32:23","Pfizer",2453,"","pro3","",""),(712,"2020-06-30 18:26:08","Pfizer",2987,"","pro2","",""),(713,"2021-03-26 05:33:07","Pfizer",1141,"","pro3","",""),(714,"2021-01-29 11:38:39","Pfizer",4036,"","pro4","",""),(715,"2020-12-02 00:45:36","Pfizer",1257,"","pro2","",""),(716,"2020-10-22 17:14:30","Pfizer",2201,"","pro3","",""),(717,"2020-12-11 06:42:10","Pfizer",3576,"","pro3","",""),(718,"2020-09-08 16:24:49","Pfizer",2219,"","pro2","",""),(719,"2020-11-16 01:50:36","Pfizer",2611,"","pro2","",""),(720,"2020-04-27 04:43:44","Pfizer",2240,"","pro4","",""),(721,"2020-12-18 20:48:21","Pfizer",3966,"","pro2","",""),(722,"2021-03-15 18:38:45","Pfizer",1356,"","pro4","",""),(723,"2020-07-12 01:19:23","Pfizer",4154,"","pro2","",""),(724,"2020-07-20 18:27:04","Pfizer",1346,"","pro2","","");




CREATE TABLE `FEDERAL` 
(
`uid` INT NOT NULL AUTO_INCREMENT , 
`date_Proc` DATETIME NOT NULL , 
`incoming_Lot_Id` INT NOT NULL , 
`manuf_Name` VARCHAR(50) NOT NULL , 
`state` VARCHAR(50) NOT NULL , 
`dose_Proc_Count` INT NOT NULL , 
`vaccine_Type` VARCHAR(50) NOT NULL , 
`date_Manuf` DATETIME NOT NULL , 
PRIMARY KEY (`uid`)
);

INSERT INTO `FEDERAL` 
(`uid`,`date_Proc`,`incoming_Lot_Id`,`manuf_Name`,`state`,`dose_Proc_Count`,`vaccine_Type`,`date_Manuf`) 
VALUES 
(1,"2020-10-04 22:21:03",100,"Moderna","Florida",1886,"rna3","2020-07-19 12:44:54"),
(2,"2020-09-12 15:39:15",507,"BioNTech","Texas",1921,"vir3","2020-10-30 04:15:55"),
(3,"2020-12-04 13:44:33",706,"Pfizer","Washington",1853,"pro3","2021-03-11 03:58:40"),
(4,"2020-09-29 11:05:36",1020,"CanSino","Indiana",1264,"path3","2021-01-09 17:47:20");
select * from FEDERAL;


CREATE TABLE `STATE_DISTR`
( `trans_Id` INT NOT NULL AUTO_INCREMENT , 
`vaccine_Type` VARCHAR(50) NOT NULL , 
`manuf_Name` VARCHAR(50) NOT NULL , 
`state` VARCHAR(50) NOT NULL , 
`received_Datetime` DATETIME NOT NULL , 
`received_Count` INT NOT NULL , 
PRIMARY KEY (`trans_Id`));






CREATE TABLE `VACCINE_DISTR`( 
`vaccine_ID` INT NOT NULL AUTO_INCREMENT , 
`vaccine_Count` INT DEFAULT 1,
`unit_Name` VARCHAR(50) NULL,
`date_Distr` DATETIME NOT NULL , 
`state` VARCHAR(50) NOT NULL , 
`dose1` BOOLEAN NULL , 
`dose2` BOOLEAN NULL , 
`p_Name` VARCHAR(50) NULL , 
`p_Addr` VARCHAR(50) NULL , 
`p_Contact` VARCHAR(50) NULL , 
`p_Age` INT NULL , 
`p_Allergy_hist` VARCHAR(50) NULL , 
`p_Id` INT NULL , 
`p_Medical_Cond` VARCHAR(50) NULL , 
PRIMARY KEY (`vaccine_Id`));





CREATE TABLE `cdc_notif_invalid_phase` (
  `p_Name` varchar(50) NOT NULL,
  `p_Age` int NOT NULL,
  `p_Id` int NOT NULL
);

DELIMITER |
CREATE TRIGGER notify_Cdc AFTER INSERT ON VACCINE_DISTR
FOR EACH ROW
BEGIN
  IF NEW.p_Age<65 AND NEW.p_Age IS NOT NULL THEN
    INSERT INTO cdc_notif_invalid_phase SET p_Name = NEW.p_Name, p_Age=NEW.p_Age, p_Id = NEW.p_Id;
  END IF;
END;
|
DELIMITER ;

SELECT 
state, 
date_Distr, 
RANK() OVER (PARTITION BY state ORDER BY date_Distr) AS Daily_Progress_on_Vaccinces
FROM VACCINE_DISTR;

