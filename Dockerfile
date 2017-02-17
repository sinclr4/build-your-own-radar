FROM nodesource/trusty:5.1

RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

COPY . /home/nodejs/app
Add package.json package.json
RUN npm install --production

CMD ["node", "index.html"]