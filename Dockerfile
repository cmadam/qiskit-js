
FROM node:12-alpine
RUN mkdir -p /packages/qiskit-algo-anu
WORKDIR /packages/qiskit-algo-anu
COPY packages/qiskit-algo-anupackage-lock.json /packages/qiskit-algo-anupackage-lock.json
COPY packages/qiskit-algo-anupackage.json /packages/qiskit-algo-anupackage.json
RUN npm install
EXPOSE 3000
CMD [ "tail", "-f", "/dev/null" ]
