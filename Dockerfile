
FROM node:12-alpine
RUN mkdir -p /packages/qiskit-utils
WORKDIR /packages/qiskit-utils
COPY packages/qiskit-utilspackage-lock.json /packages/qiskit-utilspackage-lock.json
COPY packages/qiskit-utilspackage.json /packages/qiskit-utilspackage.json
RUN npm install
EXPOSE 3000
CMD [ "tail", "-f", "/dev/null" ]
