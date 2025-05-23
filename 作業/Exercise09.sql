01. 請新建 會員資料表MEMBER，欄位描述如下..
 *
 *	Column Name			Data Type	Length	Not Null	Default	PK?	auto_increment	Comment
 *	---------------------------------------------------------------------------------------
 *	ID					int						Y	 			 Y	      Y			編號
 *	USERNAME			varchar		    50											使用者名稱
 *	PASSWORD			varchar		    50											密碼
 *	PASS				bit			     1		Y			0						帳號啟用記號
 *  CREATOR				varchar		   100		Y		'SYSTEM'					建立者
 *	CREATED_DATE		datetime				Y		  NOW()						建立日期時間
 *  UPDATER				varchar		   100				'SYSTEM'					修改者
 *	LAST_UPDATED_DATE	datetime													
 *  SESSION_ID			char			32											
 *	---------------------------------------------------------------------------------------

CREATE TABLE MEMBER (
    ID int NOT NULL AUTO_INCREMENT COMMENT '編號',
    USERNAME varchar(50),
    PASSWORD varchar(50),
    PASS bit(1) NOT NULL DEFAULT b'0' COMMENT '帳號啟用記號',
    CREATOR varchar(100) NOT NULL DEFAULT 'SYSTEM' COMMENT '建立者',
    CREATED_DATE datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建立日期時間',
    UPDATER varchar(100) DEFAULT 'SYSTEM' COMMENT '修改者',
    LAST_UPDATED_DATE datetime NULL,
    SESSION_ID char(32),
    PRIMARY KEY (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



 02. 請替資料表MEMBER的欄位PASSWORD之後加入一欄位..
 *
 *	Column Name			Data Type	Length	Not Null	Default	PK?	auto_increment	Comment
 *	---------------------------------------------------------------------------------------
 *	NICKNAME			varchar		   100		Y									暱稱
 *	---------------------------------------------------------------------------------------
 
ALTER TABLE MEMBER
ADD COLUMN NICKNAME varchar(100) NOT NULL AFTER PASSWORD COMMENT '暱稱';



03. 請修改資料表MEMBER的欄位
 * 	   USERNAME、PASSWORD: not null、長度100
 *     LAST_UPDATED_DATE: 預設值NOW()、註解"最後修改日期時間"
 
ALTER TABLE MEMBER
MODIFY COLUMN USERNAME varchar(100) NOT NULL,
MODIFY COLUMN PASSWORD varchar(100) NOT NULL;

ALTER TABLE MEMBER
MODIFY COLUMN LAST_UPDATED_DATE datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最後修改日期時間';


# 04. 請將資料表MEMBER的欄位USERNAME設為唯一鍵

ALTER TABLE MEMBER
ADD UNIQUE INDEX uniq_username (USERNAME);


# 05. 請將資料表MEMBER的欄位USERNAME的唯一鍵約束移除

ALTER TABLE MEMBER
DROP INDEX uniq_username;


# 06. 請將資料表MEMBER的欄位SESSION_ID移除

ALTER TABLE MEMBER
DROP COLUMN SESSION_ID;


# 07. 請新建資料表 MEMBER2、MEMBER3，2個資料表的結構跟資料須與資料表MEMBER一樣

CREATE TABLE MEMBER2 LIKE MEMBER;
CREATE TABLE MEMBER3 LIKE MEMBER;


# 08. 請將資料表MEMBER2改名為MEMBER_HIS

RENAME TABLE MEMBER2 TO MEMBER_HIS;


# 09. 請將資料表MEMBER3截斷(truncate)

TRUNCATE TABLE MEMBER3;


# 10. 請將資料表MEMBER3的儲存引擎改為MyISAM

ALTER TABLE MEMBER3 ENGINE = MyISAM;


# 11. 請將資料表MEMBER3移除

DROP TABLE MEMBER3;

