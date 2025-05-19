# 01. 請撰寫一select敘述，查詢Table: DEPT，列出所有資料列
SELECT * FROM DEPT;

# 02. 請撰寫一select敘述，查詢Table: EMP，列出所有員工的姓名(ENAME)、職稱(JOB)、到職日(HIREDATE)、及員工編號(EMPNO)，員工編號須顯示在第一欄
SELECT EMPNO, ENAME, JOB, HIREDATE FROM EMP;


# 03. 請撰寫一select敘述，查詢Table: EMP，列出不同的到職日(HIREDATE) (去除重複的到職日)
SELECT DISTINCT HIREDATE FROM EMP;


# 04. 續第02題，請將select敘述加上別名..
 		ENAME → EmployeeName
    	JOB → Title
    	HIREDATE → HireDate
    	EMPNO → EmployeeNo
SELECT 
  EMPNO AS EmployeeNo, 
  ENAME AS EmployeeName, 
  JOB AS Title, 
  HIREDATE AS HireDate 
FROM EMP;

# 05. 請撰寫一select敘述，查詢Table: EMP，列出員工姓名(ENAME) 串接 職稱(JOB)，中間用逗號和空白隔開(', ')，並加上別名 NAMEandTITLE
SELECT 
  CONCAT(ENAME, ', ', JOB) AS NAMEandTITLE 
FROM EMP;

