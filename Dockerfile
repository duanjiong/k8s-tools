FROM centos:latest


RUN yum install -y bash qperf ca-certificates
RUN update-ca-trust && ca-legacy  2>/dev/null
WORKDIR /
ENTRYPOINT [ "/bin/qperf" ]