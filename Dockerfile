FROM alpine:latest

WORKDIR /app
COPY . .

RUN apk add bash curl unzip
RUN curl -fsSL https://xmake.io/shget.text | bash
RUN /root/.local/bin/xmake --root

CMD /root/.local/bin/xmake --root run
