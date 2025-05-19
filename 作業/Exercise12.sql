# 01. 請替資料表DEPT的欄位DNAME，新建唯一索引，並給予適當的Index名稱

CREATE UNIQUE INDEX UQ_DEPT_DNAME ON DEPT(DNAME);



# 02. 請替資料表EMP的欄位(DEPTNO, ENAME)，新建複合索引，Index名稱為IDX_EMP_DEPTNO&ENAME

CREATE INDEX IDX_EMP_DEPTNO_ENAME ON EMP(DEPTNO, ENAME);



# 03. 請新建一個資料表PERSON，欄位描述如下..
    Column Name	DataType(Length)	not null?	PK?
	------------------------------------------------
 	ID			int					   Y		 Y
 	NAME		varchar(50)			   Y
 	並同時替欄位NAME加上一般索引

CREATE TABLE PERSON (
    ID INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL
);

CREATE INDEX IDX_PERSON_NAME ON PERSON(NAME);




# 04. 請使用alter table敘述，替資料表DEPT的欄位(DNAME, LOC)加入複合索引

ALTER TABLE DEPT
ADD INDEX IDX_DEPT_DNAME_LOC (DNAME, LOC);


# 05. 請移除第04題建立的索引

ALTER TABLE DEPT
DROP INDEX IDX_DEPT_DNAME_LOC;

