FROM ubuntu
RUN apt-get update -y
RUN apt-get install wget curl azure-cli -y
COPY c1fss-azure.sh ./c1fss-azure.sh
ENTRYPOINT az login
CMD bash c1fss-azure.sh
