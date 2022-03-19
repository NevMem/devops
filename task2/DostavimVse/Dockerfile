FROM ubuntu:20.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt install -y openjdk-8-jdk

COPY . ./app/

EXPOSE 8080

CMD ["./app/runner.sh"]
