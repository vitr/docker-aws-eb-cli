FROM alpine:3.5.3
MAINTAINER vitr <vit@vitr.dev>
RUN apk add --update --no-cache python3 git openssh-client && \
	python3 -m ensurepip && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade --user awsebcli && \
    export PATH=~/.local/bin:$PATH

ENV PATH /root/.local/bin:$PATH
ENTRYPOINT ["eb"]
VOLUME ["/aws"]
WORKDIR /aws
