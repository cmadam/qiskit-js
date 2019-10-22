
FROM node:12-alpine
RUN mkdir -p /packages/qiskit-sim
WORKDIR /packages/qiskit-sim
COPY packages/qiskit-simpackage-lock.json /packages/qiskit-simpackage-lock.json
COPY packages/qiskit-simpackage.json /packages/qiskit-simpackage.json
RUN npm install
EXPOSE 3000
CMD [ "tail", "-f", "/dev/null" ]
