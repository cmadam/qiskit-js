
FROM node:12-alpine
RUN mkdir -p /packages/qiskit
WORKDIR /packages/qiskit
COPY packages/qiskitpackage-lock.json /packages/qiskitpackage-lock.json
COPY packages/qiskitpackage.json /packages/qiskitpackage.json
RUN npm install
EXPOSE 3000
CMD [ "tail", "-f", "/dev/null" ]
