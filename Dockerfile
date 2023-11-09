FROM ubuntu:latest

WORKDIR /app
COPY . .

RUN apt update
RUN apt install -y bash p7zip-full curl
RUN curl -fsSL https://xmake.io/shget.text | bash
RUN /root/.local/bin/xmake --root -y

CMD /root/.local/bin/xmake --root run
