# DOCKER-VERSION 1.0.1
FROM ariya/centos6-oracle-jre7
MAINTAINER ggotti

#Enables Centos EPL repository, and then installs python modules.
RUN wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y install epel-release-6-8.noarch.rpm
RUN yum -y install ipython
RUN yum install -y python-psutil

# Install utility for AEM
ADD aemInstaller.py /aem/aemInstaller.py
