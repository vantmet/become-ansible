FROM centos:centos7.7.1908

RUN yum check-update; \
    yum install -y gcc libffi-devel python3 epel-release; \
    yum install -y openssh-clients; \
    pip3 install --upgrade pip; 

RUN pip3 install ansible; \
    pip3 install boto; \
    pip3 install boto3