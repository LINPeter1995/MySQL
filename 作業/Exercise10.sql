# 01. 請利用Workbench建立一使用者帳號
 	   Username: william
 	   Host: %
 	   Password: P@ssw0rd
 
 CREATE USER 'william'@'%' IDENTIFIED BY 'P@ssw0rd';


# 02. 請授予使用者william對資料庫EXAMPLE底下所有資料表的所有權限

GRANT ALL PRIVILEGES ON EXAMPLE.* TO 'william'@'%';
FLUSH PRIVILEGES;


# 03. 請撤銷william對資料庫EXAMPLE底下所有資料表的所有權限

REVOKE ALL PRIVILEGES ON EXAMPLE.* FROM 'william'@'%';
FLUSH PRIVILEGES;

