FROM ubuntu:22.04
LABEL "Maintainer"="NaturalSelect<2145973003@qq.com>"
RUN apt-get update
RUN apt-get install -y wget nodejs
WORKDIR /root
RUN wget https://github.com/libccy/noname/archive/refs/tags/chromium77-client.tar.gz
RUN tar -zxf chromium77-client.tar.gz && rm chromium77-client.tar.gz && mv ./noname-chromium77-client/* ./ && rm -r ./noname-chromium77-client
COPY "entry_point.sh" "./entry_point.sh"
ENTRYPOINT [ "./entry_point.sh" ]