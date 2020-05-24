FROM ubuntu:18.04

RUN apt update
RUN apt install -yq git build-essential wget unzip python3 python3-dev python3-pip libhdf5-dev libmecab-dev mecab-ipadic-utf8

RUN git clone https://github.com/commonsense/conceptnet5.git /opt/conceptnet5
RUN mkdir /opt/conceptnet5/data
WORKDIR /opt/conceptnet5
RUN pip3 install -e '.[vectors]'
RUN cd web; pip3 install -e .

ADD scripts/run_conceptnet_build.sh /
ADD scripts/run_conceptnet_server.sh /
ENTRYPOINT ['/run_conceptnet_server.sh']
