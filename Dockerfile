FROM ubuntu

RUN apt update && apt upgrade -y
RUN apt install wget -y
RUN wget -O onion-1.4.tar.gz 'http://corpus.tools/raw-attachment/wiki/Downloads/onion-1.4.tar.gz'
RUN tar xzvf onion-1.4.tar.gz
RUN apt install git -y
RUN git clone https://github.com/sparsehash/sparsehash.git
RUN apt install build-essential -y
WORKDIR sparsehash
RUN ./configure
RUN make
RUN make install
WORKDIR ../onion-1.4
RUN make
RUN make install
WORKDIR ..
RUN mkdir deduplication_data
WORKDIR deduplication_data
COPY onion_deduplicate.sh .