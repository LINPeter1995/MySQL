# 01. 請新增以下資料至資料表DEPT: 50, 'Software', 'Taipei'

    INSERT INTO DEPT (DEPTNO, DNAME, LOC)
    VALUES (50, 'Software', 'Taipei');


# 02. 請新增以下資料至資料表EMP的欄位EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO
  	   9999, 'William', 'PG', null, NOW(), 2500, 50
 	   8888, 'Lee', 'PM', null, NOW(), 3500, 50

    INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
    VALUES 
    (9999, 'William', 'PG', NULL, NOW(), 2500, 50),
    (8888, 'Lee', 'PM', NULL, NOW(), 3500, 50);


# 03. 請修改資料表EMP的資料..
 	   將員工8888 的主管 改為 7839
 	   將員工9999 的主管 改為 8888
 
    UPDATE EMP
    SET MGR = 7839
    WHERE EMPNO = 8888;

    UPDATE EMP
    SET MGR = 8888
    WHERE EMPNO = 9999;


# 04. 請刪除員工編號為8888的員工之資料
    DELETE FROM EMP
    WHERE EMPNO = 8888;


# 05. 請列出修改資料表EMP的資料..將員工9999 的主管 改為 7839，薪水 改為 4000
    UPDATE EMP
    SET MGR = 7839, SAL = 4000
    WHERE EMPNO = 9999;



