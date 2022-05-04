FROM ubuntu
RUN apt-get update -y
RUN apt-get install wget curl azure-cli -y
COPY c1fss-azure.sh ./c1fss-azure.sh
COPY cmd.sh ./cmd.sh
ENTRYPOINT ["sh", "./cmd.sh"]
