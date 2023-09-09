FROM alpine:3.9
MAINTAINER vitr <vit@vitr.com.au>

COPY src/ /

ENV PATH /root/.local/bin:$PATH
ENTRYPOINT ["eb"]
VOLUME ["/aws"]
WORKDIR /aws