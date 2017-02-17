FROM nodesource/trusty:5.1

RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

Add package.json package.json
COPY . /home/nodejs/app
RUN npm install --production

CMD ["npm”, “start”]