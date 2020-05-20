FROM ubuntu:16.04

RUN apt update
RUN apt install -yq build-essential python3-pip python3-dev libhdf5-dev libmecab-dev mecab-ipadic-utf8

RUN git clone git@github.com:commonsense/conceptnet5 /opt/conceptnet5
RUN mkdir /opt/conceptnet5/data
WORKDIR /opt/conceptnet
RUN pip install -e '.[vectors]'
RUN cd web; pip install -e .

ADD scripts/run_conceptnet_build.sh /
ADD scripts/run_conceptnet_server.sh /
ENTRYPOINT ['/run_conceptnet_server.sh']
