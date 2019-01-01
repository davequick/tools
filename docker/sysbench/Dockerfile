FROM centos:7
LABEL maintainer="dave.quick@oracle.com" benchmark="sysbench"
RUN curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.rpm.sh | bash
RUN yum install -y sysbench mysql git
RUN yum update -y
RUN cd /root
RUN git clone https://github.com/akopytov/sysbench.git
CMD bash
