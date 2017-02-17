FROM node:7.2.1

RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app

COPY package.json $HOME/radar/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/radar
RUN npm install

ENV PORT 8080
EXPOSE  $PORT

USER root
COPY . $HOME/radar
RUN chown -R app:app $HOME/*

USER app

CMD ["npm", "run","dev"]
