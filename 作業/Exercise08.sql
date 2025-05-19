01. 請啟用交易控制模式，執行以下動作..
 	   刪除除了老闆以外的所有員工之資料列
 	   查詢確認是否已刪除
 	   還原

 -- 啟用交易控制
START TRANSACTION;

-- 刪除除了老闆以外的所有員工（假設老闆是 KING，EMPNO = 7839）
DELETE FROM EMP
WHERE EMPNO <> 7839;

-- 查詢確認是否已刪除
SELECT * FROM EMP;

-- 還原
ROLLBACK;

-- 再查詢確認已還原
SELECT * FROM EMP;


02. 請開啟單一交易控制，執行以下動作..
 	   修改除了老闆以外的所有員工，獎金+1000、薪水+15%
 	   查詢確認是否已修改
 	   送交

-- 啟用交易
START TRANSACTION;

-- 更新獎金與薪水（假設老闆是 EMPNO = 7839）
UPDATE EMP
SET 
  SAL = SAL * 1.15,
  COMM = IFNULL(COMM, 0) + 1000
WHERE EMPNO <> 7839;

-- 查詢確認
SELECT EMPNO, ENAME, SAL, COMM FROM EMP;

-- 送交
COMMIT;


03. 今天公司空降了一位主管ERIC，員工編號: 6666，職稱: MANAGER，主管: 7839，薪資: 3500，部門號: 50。
        另外原本就在職的2位員工7499、7844調至部門編號50，且主管改為6666。
	    請開啟單一交易控制，將上述動作在一個交易內完成

 -- 啟用交易
START TRANSACTION;

-- 新增 ERIC
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES (6666, 'ERIC', 'MANAGER', 7839, NOW(), 3500, 50);

-- 更新 7499、7844 調至部門 50，主管改為 6666
UPDATE EMP
SET DEPTNO = 50, MGR = 6666
WHERE EMPNO IN (7499, 7844);

-- 查詢確認
SELECT EMPNO, ENAME, DEPTNO, MGR FROM EMP
WHERE EMPNO IN (6666, 7499, 7844);

-- 送交
COMMIT;

