# arcms项目说明
- 本模板基于Layui2.*实现，支持除LayIM外所有的Layui组件
- 本项目后端采用arphp 5.1，前端采用layuicms2.0，本项目适合后台管理等项目。
- 本项目所有源码仅供学习交流，请不要用于商业
- 源码遵循apache开源协议
- [在线演示地址](http://arcms.coopcoder.com) 帐号 admin 密码 123456
## 安装及部署
命令
```
 git clone https://github.com/assnr/arcms

 composer update assnr/arphp
```
## 数据库配置
* 1.导入
数据库文件 data/arcms.sql, 数据库连接工具创建数据库arcms然后导入此文件即可

* 2.修改cfg/base.php
修改配置dsn,user,pass等数据库帐号信息

* 3.入口访问文件 , apache,nginx请配置路由到此地址的路由规则
arcms/index.php

相关链接
- [arphp(高性能组件化PHP框架)](https://github.com/assnr/arphp)
- *arphp*开发交流群*259956472*
