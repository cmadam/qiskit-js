
FROM node:12-alpine
RUN mkdir -p /packages/qiskit-qasm
WORKDIR /packages/qiskit-qasm
COPY packages/qiskit-qasmpackage-lock.json /packages/qiskit-qasmpackage-lock.json
COPY packages/qiskit-qasmpackage.json /packages/qiskit-qasmpackage.json
RUN npm install
EXPOSE 3000
CMD [ "tail", "-f", "/dev/null" ]
