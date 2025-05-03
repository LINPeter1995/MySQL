# MySQL

"一、電腦基礎講解 
        1. 基本介紹 
            1. 硬體: 硬碟(慢) / 記憶體(快) 
            2. 軟體可分:應用程式application(前景執行) / 系統system(背景執行) 
        2. 基本網路用語: IP / Client客戶端 / Server伺服器 / Port埠 
二、資料庫導論 
        1. 資料庫概念存在已久，儲存方式: 紙本 → 磁帶 →檔案→ 資料庫 
        2. 資料庫系統 = 資料庫(DB)+資料庫管理系統(DBMS) 
        3. 資料庫物件階層：1.伺服器(server) 、2.DBMS(安裝於server)、3.DB(可建多個，等同C/D槽) 、4.綱要(schema ,MySQL中等同DB)、5.資料表(table)、6.欄(column)、7.資料列(row / record)、8.值(cell )"

        "一、安裝環境 
二、 MySQL基本觀念 
        1. MySQL包含五種子語言，子語言內有敘述及子句 
        2. 每段敘述結尾應加分號 
        3. 利用換行及縮排增加程式可讀性 
三、子語言DQL(data query language) 
        1. DQL僅用於查詢、不異動table資料，裡面僅有一個select敘述 
        2. select子句 
            1. select (欄位) from (table) 查詢指定欄位 
            2. select * form (table) 看全部欄位 
            3. select distinct (欄位) from (table) 顯示去除重複後的資料 
        3. 空值NULL 
        4. 字串串接: select concat(’字串1’, ‘字串2’,….) 
        5. 值轉換: case…then…end as 別名 
            1. 簡易型: case (原值1) then (新值1) … end 
            2. 搜索型: case (條件1) then (結果1) … end "

            "select敘述 where 子句
    1.between 值1 and 值2
    2.in(值1,值2)
    3.is [not] null
    4.like '%' '_' escape
select敘述 order by⼦句
    1.asc/desc:排序的⽅向(遞增/遞減)，預設為asc
作業2
select敘述 group by⼦句
    1.內建函式"

    "select敘述 group by ⼦句
    1.字串函式
    2.數值函式
    3.⽇期時間函式
    4.資料型態轉換函式
    5.通⽤函式：系統資料函式跳過，IF(expr1,expr2,expr3)：三元運算子
    6.聚合/群組函式
select敘述 having ⼦句
select敘述 from ⼦句
    1.基本語法
    2.join的種類
    3.cross join
    4.natural join
    5.equal join"

    JOIN子句
    dml敘述

    "講解作業題目
TCL交易控制語言
autocommit、commit、rollback、savepoint
作業8
DDL 資料定義語⾔
create database
create table
"

"DDL 資料定義語⾔:
primary key 
unique key
foreign key, 約束 on update/on delete
check
auto increment 自動編號
建立資料表變化型
drop table 移除資料表
truncate table 清理資料表"

"1. DDL: alter table 修改表單
- 差異: update是修改資料 / alter是修改表單結構
- 調整欄位: add / drop / change column ...
- 調整約束: add / drop primary key ; add / drop constraint (UK / FK / Check)
- 調整表單名(rename)可能造成程式碼出錯
2. 其他物件: View
- view是把select敘述的結果儲存 , 它可以被寫在from後面 , 資料庫層級等同table 
- 使⽤到的資料來源即為基底資料表(Based Table)，修改/移除基底資料表，可能會造成View產⽣錯誤
- 建立方式類似新建table , create view (name) as (子查詢)
- view的異動 = 透過view異動table，view可異動但結果可能不如預期"

- "1. 其他物件:
1.1. Index:
-. 用於快速查找資料
-. 針對某個Table，由1個或多個Column組成
-. 種類: 主要索引(建立PK時由資料庫建立) / 複合索引 / 唯一索引(UI跟UK 2個效果一樣，部分資料庫會放棄UK) / 一般索引(建立FK時會自動建立)
1.2. function: 跟python一樣可自訂函式並設定回傳值
1.3. stored procedure: 沒有return，但會設定輸出的out參數
1.4. trigger: 針對資料表，當資料表進行新刪修的發生前或發生後，執行trigger內的程式碼
1.5. event: 新增後依照設定時間馬上執行do裡面的行為
2. 其他功能:
2.1. 分組排名: select  rank() over( partition by (分組欄位) order by (排名欄位) [desc]) as 別名，依據partition by 後面的欄位進行分組後，再做排名
2.2. union: 兩個表單的垂直串聯 select * from (表單1) union select * from (表單2)
3. CTE:
- 將表單查詢結果儲存在一個變數中: with (變數) as (子查詢) select * from (表單)
- 可進階做遞迴查詢，第一次的查詢結果可被後續的查詢使用 : with recursive (變數) as ( 第一次的查詢動作 union all 第二次後的遞迴查詢 ) select * from (表單)"
