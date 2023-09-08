FROM ubuntu:22.04
MAINTAINER vitr <vit@vitr.dev>

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3-pip
RUN pip install "pyyaml<5.4"
RUN pip install awsebcli

ENV PATH /root/.local/bin:$PATH
ENTRYPOINT ["eb"]
VOLUME ["/aws"]
WORKDIR /aws
