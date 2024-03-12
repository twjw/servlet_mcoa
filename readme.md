servlet_mcoa
===

tomcat 8  
mysql 8 (utf8mb4, utf8mb4_general_ci, docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql:8)  
mybatis 3.5  
alibaba druid  
servlet 3.1  

mvc 架構:  
html 視圖層(view) -> servlet 控制層(controller) -> service 業務邏輯層(model) -> mapper 數據持久層(model)
