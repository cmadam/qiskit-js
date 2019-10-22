
FROM node:12-alpine
RUN mkdir -p /examples/webpack
WORKDIR /examples/webpack
COPY examples/webpackpackage-lock.json /examples/webpackpackage-lock.json
COPY examples/webpackpackage.json /examples/webpackpackage.json
RUN npm install
EXPOSE 3000
CMD [ "tail", "-f", "/dev/null" ]
