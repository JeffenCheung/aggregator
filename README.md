# Pactera JeeSite 企业信息化快速开发平台 V1.2.11-SNAPSHOT
----------
## 演示
- [Out Of Office (OOO) Internet][1]
- [Inhouse (Haya Peking) Intronet][2]

## 聚合器
aggregator是父工程，同时承担聚合模块和父模块的作用，没有实际代码和资源文件 

## 聚合项目
1.	[必须] [jeesite-common](https://github.com/JeffenCheung/jeesite-common)：【jar】
基础工程，里面是jeesite公共的代码,
最终会以jar包方式聚合到server的lib中，其他war会合并成总的war
2.	[必须] [jeesite-web](https://github.com/JeffenCheung/jeesite-web)：【war】
web是平台基础页面，里面是jeesite的页面代码
3.	[可选] [jeesite-cms](https://github.com/JeffenCheung/jeesite-cms): 【war】
jeesite内容管理模块，包括前后台代码
4.	[推荐] [jeesite-gen](https://github.com/JeffenCheung/jeesite-gen): 【war】
jeesite代码生成模块，包括前后台代码和模版
5.	[可选] [jeesite-oa](https://github.com/JeffenCheung/jeesite-oa): 【war】
jeesite办公自动化模块，activity在线流程引擎
5.	[可选] [jeesite-oa-core](https://github.com/JeffenCheung/jeesite-oa-core): 【jar】
jeesite办公自动化核心
6.	[可选] [jeesite-soa](https://github.com/JeffenCheung/jeesite-soa): 【war】
jeesite RESTful风格webservice demo
7.	[可选] [pactera-crm](https://github.com/JeffenCheung/pactera-crm)：【war】
业务系统、子系统、模块等maven war project
8.	[可选] [pactera-sms](https://github.com/JeffenCheung/pactera-sms)：【war】
业务系统、子系统、模块等maven war project
9.	[必须] [jeesite-web-dist](https://github.com/JeffenCheung/jeesite-web-dist)：【war】
这个工程是放在最后的最外围的web工程，起到聚合的作用，
即把所有的web项目，打成最终的war包。同时，在这个工程里，放置或替换公共的配置文件，比如*.xml、*.properties等。
新项目根据规范，需重新命名本artifactId，如aggregator_bi，以deploy项目的aggregator artifact到Nexus上。
根据构建开发测试等差异环境需要，-web-dist工程引入了profile机制，通过mvn install -Pxxx方式启动定制资源。

[1]:http://219.143.215.116:8080/pactera-jeesite
[2]:http://192.168.5.5:8080/pactera-jeesite
