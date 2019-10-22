
FROM node:12-alpine
RUN mkdir -p /packages/qiskit-algo-js
WORKDIR /packages/qiskit-algo-js
COPY packages/qiskit-algo-jspackage-lock.json /packages/qiskit-algo-jspackage-lock.json
COPY packages/qiskit-algo-jspackage.json /packages/qiskit-algo-jspackage.json
RUN npm install
EXPOSE 3000
CMD [ "tail", "-f", "/dev/null" ]
