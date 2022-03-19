FROM ubuntu:20.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt install -y gcc g++ cmake python3-pip

RUN useradd -ms /bin/bash techproguser
RUN usermod -aG sudo techproguser
WORKDIR /home/techproguser/

COPY . .

RUN pip3 install -r requirements.txt

RUN cmake .
RUN make

EXPOSE 5000

USER techproguser

CMD [ "./runner.sh" ]
