FROM apache/nifi:latest
ENV NIFI_BASE_DIR=/opt/nifi
ENV NIFI_HOME ${NIFI_BASE_DIR}/nifi-current
USER root
RUN apt-get -y update 
RUN apt-get -y install git apt-transport-https ca-certificates
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt-get -y update 
RUN ACCEPT_EULA=Y apt-get -y install mssql-tools
RUN apt-get -y install vim
WORKDIR ${NIFI_HOME}






#FROM apache/nifi:latest
#RUN apt-get -y update
#RUN apt-get -y install nginx
#RUN apt-get -y install postgresql-11
#EXPOSE 80
#EXPOSE 5432
#EXPOSE 8080
#CMD ["nginx", "-g", "daemon off;","postgres"]