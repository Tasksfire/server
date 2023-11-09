FROM ubuntu:latest

WORKDIR /app
COPY . .

RUN apt install -y bash curl p7zip-full
RUN curl -fsSL https://xmake.io/shget.text | bash
RUN /root/.local/bin/xmake --root -y

CMD /root/.local/bin/xmake --root run
