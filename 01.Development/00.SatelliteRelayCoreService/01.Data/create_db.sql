--1. TB_SATELLITE_INFO
-- DROP TABLE TB_SATELLTIE_INFO;
CREATE TABLE `TB_SATELLITE_INFO` (
	`SATELLITE`	TEXT NOT NULL,
	`RESERVE_TIME1`	TEXT,
	`RESERVE_TIME2`	TEXT,
	`RESERVE_TIME3`	TEXT,
	`RESERVE_TIME4`	TEXT,
	`RESERVE_TIME5`	TEXT,
	`NEXT_RESERVE_TIME`	TEXT,
	`LAUNCH_TIME`	TEXT,
	`ALTITUDE`	TEXT,
	`ORBIT`	TEXT,
	`PERIOD`	TEXT,
	`SENSORS`	TEXT,
	`CHANNEL`	TEXT,
	`RESOLUTION`	TEXT,
	`SWATCH`	TEXT,
	`SATE_CD`	TEXT,
	`APPLICATION`	TEXT,
	PRIMARY KEY(`SATELLITE`)
);

--2. TB_PRODUCT_LIST
-- DROP TABLE TB_PRODUCT_LIST;
CREATE TABLE `TB_PRODUCT_LIST` (
	`SATELLITE`	TEXT NOT NULL,
	`DATA_GBN`	TEXT NOT NULL,
	`DATA_AN_GBN`	TEXT NOT NULL,
	`DATA_TYPE`	TEXT NOT NULL,
	`FILENM_FORMAT`	TEXT NOT NULL,
	`FTP_FILE_DIR`	TEXT NOT NULL,
	`OUTPUT_SATELLITE`	TEXT NOT NULL,
	`COORD_UL`	TEXT,
	`COORD_LR`	TEXT,
	`PIXEL_ROW`	INTEGER,
	`PIXEL_COL`	INTEGER,
	`PROJECTION`	TEXT,
	`QUICK_LOOK`	TEXT,
	`RESOLUTION`	TEXT,
	`FILE_STATUS`	TEXT,
	`MOUNT_POINT`	TEXT,
	`DATA_OPEN`	TEXT,
	PRIMARY KEY(`SATELLITE`, `DATA_GBN`,  `DATA_AN_GBN`, `DATA_TYPE`)
);


--3. TB_PRODUCT_HISTORY
-- DROP TABLE TB_PRODUCT_HISTORY;
CREATE TABLE `TB_PRODUCT_HISTORY` (
	`SEQ`	INTEGER NOT NULL,
	`SATELLITE`	TEXT NOT NULL,
	`IDENTIFIER`	TEXT NOT NULL,	
	`DATA_GBN`	TEXT NOT NULL,
	`DATA_AN_GBN`	TEXT NOT NULL,
	`DATA_TYPE`	TEXT NOT NULL,
	`START_TIME`	TEXT,
	`END_TIME`	TEXT,
	`RELAY_STATUS`	TEXT,
	`SURVEY_DATE`	TEXT,
	`COORD_UL`	TEXT,
	`COORD_LR`	TEXT,
	`PIXEL_ROW`	INTEGER,
	`PIXEL_COL`	INTEGER,
	`DATA_FORMAT`	TEXT,
	`PROJECTION`	TEXT,
	`QUICK_LOOK`	TEXT,
	`RESOLUTION`	TEXT,
	`FILE_SIZE`	TEXT,
	`FILE_STATUS`	TEXT,
	`FILE_PATH`	TEXT,
	`REG_DATE`	TEXT,
	`MOUNT_POINT`	TEXT,
	`DATA_OPEN`	TEXT,
	`SURVEY_TIME`	TEXT,
	`OUTPUT_SATELLITE`	TEXT NOT NULL,	
	`PROGRESS`	INTEGER,
	PRIMARY KEY(`SEQ`)
);

--4. TB_SERVER_LIST
--DROP TABLE TB_SERVER_LIST;
CREATE TABLE `TB_SERVER_LIST` (
	`SERVER_TYPE`	TEXT NOT NULL,
	`SEQNO`	INTEGER NOT NULL,
	`SERVER_NAME`	TEXT,
	`CONN_TYPE`	TEXT,
	`CONN_ADDR`	TEXT NOT NULL,
	`CONN_PORTNO`	TEXT NOT NULL,
	`USERID`	TEXT NOT NULL,
	`PASSWORD`	TEXT NOT NULL,
	`DB_SID` TEXT,
	PRIMARY KEY(`SERVER_TYPE`,`SEQNO`)
);

--5. TB_SEQ
-- DROP TABLE TB_SEQ;
CREATE TABLE `TB_SEQ` (
	`SEQ_TYPE1`	TEXT NOT NULL,
	`SEQ_TYPE2`	TEXT,
	`LAST_SEQ`	INTEGER NOT NULL,
	PRIMARY KEY(`SEQ_TYPE1`,`SEQ_TYPE2`)
);
