FROM node:14.16.0-alpine3.13

ENV ADONIS_HOME=/app

RUN mkdir -p $ADONIS_HOME

WORKDIR $ADONIS_HOME

COPY . $ADONIS_HOME

RUN npm i -g @adonisjs/cli

# install dependencies
RUN npm install

EXPOSE 3333

ENTRYPOINT ["./docker-entrypoint.sh"]
