@echo off
rem /**
rem  * Copyright &copy; 2014-2016 <a href="https://pactera.com">Pactera-JeeSite</a> All rights reserved.served.
rem  *
rem  * Author: Jeffen@pactera
rem  * Date: 2016/4/15
rem  * Version: 0.1
rem  */

echo [install description]
echo aggregator里pactera.jeesite.version升级版本后，
echo 以反应堆及继承顺序进行依赖安装，
echo 以便全量和增量deploy时可无序进行。

echo.base directory : ${workspace_loc:/aggregator}
echo.Runtime JRE VM arguments: -Xms1024m -Xmx1024m -XX:PermSize=128M -XX:MaxNewSize=512m -XX:MaxPermSize=256m -Dfile.encoding=GBK -Dcargo.servlet.uriencoding=GBK
pause
echo.

cd %~dp0
cd..

rem Clean & Build & Deploy the aggreagated projects to tomcat server with skipping auto test.
rem 0) install aggregator
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true

rem 1) install jeesite-common
cd..
cd jeesite-common
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true

rem 2) install jeesite-oa-core
cd..
cd jeesite-oa-core
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true

rem 3) install jeesite-gen
cd..
cd jeesite-gen
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true

rem 4) install jeesite-cms
cd..
cd jeesite-cms
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true

rem 5) install jeesite-oa
cd..
cd jeesite-oa
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true

rem 6) install jeesite-soa
cd..
cd jeesite-soa
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true

rem 7) install pactera-crm
cd..
cd pactera-crm
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true

rem 8) install pactera-sms
cd..
cd pactera-sms
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true

rem 9) install jeesite-web
cd..
cd jeesite-web
call mvn clean install -U --update-snapshots -Dmaven.test.skip=true


rem 10) install jeesite-web-dist
cd..
cd jeesite-web-dist
call mvn clean install -U --update-snapshots -Pdev_pdt -Dmaven.test.skip=true


pause