FROM node:7.5.0

RUN useradd --user-group --create-home --shell /bin/false app

COPY package.json /home/app/some-useless-startup/
RUN chown -R app:app /home/app/*

USER app
WORKDIR /home/app/some-useless-startup
RUN npm install -q

CMD ["npm", "start"]
