FROM oraclelinux:latest
LABEL nodejs="10.14.2" instantclient="18.3.0.0.0" node-oracledb="3.0.0" maintainer="dave.quick@oracle.com"
RUN yum install wget deltarpm-3.6-3.el7.x86_64 libaio -y
RUN wget https://yum.oracle.com/public-yum-ol7.repo -O /etc/yum.repos.d/public-yum-ol7RUN
RUN yum update -y
RUN rpm -i https://yum.oracle.com/repo/OracleLinux/OL7/developer_nodejs10/x86_64/getPackage/nodejs-10.14.2-1.0.1.el7.x86_64.rpm
RUN rpm -i http://yum.oracle.com/repo/OracleLinux/OL7/oracle/instantclient/x86_64/getPackage/oracle-instantclient18.3-basic-18.3.0.0.0-2.x86_64.rpm
RUN rpm -i https://yum.oracle.com/repo/OracleLinux/OL7/developer_nodejs10/x86_64/getPackage/node-oracledb-node10-3.0.0-1.el7.x86_64.rpm
CMD bash

