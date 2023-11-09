FROM alpine:latest

WORKDIR /app
COPY . .

RUN apk add bash curl
RUN curl -fsSL https://xmake.io/shget.text | bash
RUN /root/.local/bin/xmake

CMD /root/.local/bin/xmake run
