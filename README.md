🖥 一、電腦與網路基礎

1. 基本介紹

硬體：

硬碟（慢）

記憶體（快）

軟體：

應用程式（application，前景執行）

系統軟體（system，背景執行）

2. 網路基本用語

IP：網路位址

Client（客戶端） / Server（伺服器）

Port（埠口）：程式服務的端口

🗃 二、資料庫導論

1. 儲存演進
   
紙本 → 磁帶 → 檔案 → 資料庫

2. 資料庫組成
   
資料庫 (DB)

資料庫管理系統 (DBMS)

3. 資料庫物件階層
   
Server → DBMS → DB（如C槽）→ Schema（MySQL中等同DB）→ Table → Column → Row/Record → Cell（值）

🛠 三、MySQL 安裝與基本觀念

每段語法以 分號(;) 結尾

使用 縮排與換行 提高可讀性

MySQL子語言：共五種（最常用為DQL）

🔎 四、DQL（Data Query Language）資料查詢語言

1. SELECT 敘述

SELECT 欄位 FROM 表格;
SELECT * FROM 表格;
SELECT DISTINCT 欄位 FROM 表格;

2. NULL 值處理

IS NULL / IS NOT NULL

3. 字串處理
   
串接字串：CONCAT('字串1', '字串2')

4. 值轉換

CASE 欄位
    WHEN '原值' THEN '新值'
    ...
END AS 別名;

5. WHERE 子句條件

BETWEEN 值1 AND 值2

IN (值1, 值2)

IS [NOT] NULL

LIKE '%abc_' ESCAPE

6. 排序
   
ORDER BY 欄位 ASC/DESC;

📊 五、Group By 與聚合函式

1. GROUP BY 子句

SELECT 欄位, COUNT(*) FROM 表格 GROUP BY 欄位;

2. 內建函式分類
   
字串函式

數值函式

日期時間函式

資料型態轉換函式

通用函式：IF(expr1, expr2, expr3)

群組函式：SUM, AVG, MAX, MIN, COUNT

3. HAVING 子句
   
對群組後結果再加條件：

SELECT 欄位, COUNT(*) FROM 表格 GROUP BY 欄位 HAVING COUNT(*) > 1;

🔗 六、JOIN 子句與 FROM 子句

INNER JOIN

LEFT JOIN

RIGHT JOIN

CROSS JOIN

NATURAL JOIN

EQUAL JOIN

✍️ 七、DML（Data Manipulation Language）

操作資料用語句（新增、修改、刪除）

🔒 八、TCL（Transaction Control Language）交易控制語言

AUTOCOMMIT：自動提交

COMMIT：確認儲存

ROLLBACK：還原

SAVEPOINT：設立還原點

🧱 九、DDL（Data Definition Language）資料定義語言

1. 建立
   
CREATE DATABASE

CREATE TABLE

2. 欄位與約束
   
PRIMARY KEY

UNIQUE KEY（UNIQUE 或 UK）

FOREIGN KEY：ON UPDATE / ON DELETE

CHECK

AUTO_INCREMENT

3. 表格操作
   
DROP TABLE：移除整張表

TRUNCATE TABLE：清空表內資料

4. 修改表格：ALTER TABLE

ADD COLUMN, DROP COLUMN, CHANGE COLUMN

ADD/DROP PRIMARY KEY

ADD/DROP CONSTRAINT

RENAME TABLE

👁 十、其他資料庫物件與功能

1. View（檢視表）

儲存 SELECT 結果的虛擬表

CREATE VIEW 檢視名稱 AS SELECT ...

2. Index（索引）

加速查詢

種類：

主索引（PK）

複合索引

唯一索引（UI / UK）

一般索引（自動建立於FK）

3. Function / Stored Procedure / Trigger / Event

Function：有回傳值

Stored Procedure：透過 OUT 輸出結果

Trigger：針對資料表操作前後執行

Event：指定時間執行的自動任務

🧮 十一、進階功能

1. 分組排名

SELECT RANK() OVER (PARTITION BY 分組欄位 ORDER BY 排名欄位 DESC) AS 排名

2. UNION

SELECT * FROM 表1
UNION
SELECT * FROM 表2

3. CTE（共通表達式）

WITH 變數 AS (
    SELECT ...
)
SELECT * FROM 變數;

4. 遞迴查詢

WITH RECURSIVE 變數 AS (
    初始查詢
    UNION ALL
    遞迴查詢
)
SELECT * FROM 變數;

