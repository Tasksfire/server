FROM alpine:latest

WORKDIR /app
COPY . .

RUN apk add bash curl p7zip
RUN curl -fsSL https://xmake.io/shget.text | bash
RUN /root/.local/bin/xmake --root -y

CMD /root/.local/bin/xmake --root run
