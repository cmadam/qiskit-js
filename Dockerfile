
FROM node:12-alpine
RUN mkdir -p /
WORKDIR /
COPY package-lock.json /package-lock.json
COPY package.json /package.json
RUN npm install
EXPOSE 3000
CMD [ "tail", "-f", "/dev/null" ]
