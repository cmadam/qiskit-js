
FROM node:12-alpine
RUN mkdir -p /packages/qiskit-cloud
WORKDIR /packages/qiskit-cloud
COPY packages/qiskit-cloudpackage-lock.json /packages/qiskit-cloudpackage-lock.json
COPY packages/qiskit-cloudpackage.json /packages/qiskit-cloudpackage.json
RUN npm install
EXPOSE 3000
CMD [ "tail", "-f", "/dev/null" ]
