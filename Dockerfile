FROM node:12-alpine

RUN mkdir -p \
    /packages \
    /packages/qiskit-utils \
    /packages/qiskit-algo-anu \
    /packages/qiskit-cloud \
    /packages/qiskit-sim \
    /packages/qiskit-qasm \
    /packages/qiskit-algo-js \
    /packages/qiskit \
    /examples/webpack

WORKDIR /packages
COPY package-lock.json /packages/package-lock.json
COPY package.json /packages/package.json
RUN npm install

WORKDIR /packages/qiskit-utils
COPY package-lock.json /packages/qiskit-utils/package-lock.json
COPY package.json /packages/qiskit-utils/package.json
RUN npm install

WORKDIR /packages/qiskit-algo-anu
COPY package-lock.json /packages/qiskit-algo-anu/package-lock.json
COPY package.json /packages/qiskit-algo-anu/package.json
RUN npm install

WORKDIR /packages/qiskit-cloud
COPY package-lock.json /packages/qiskit-cloud/package-lock.json
COPY package.json /packages/qiskit-cloud/package.json
RUN npm install

WORKDIR /packages/qiskit-sim
COPY package-lock.json /packages/qiskit-sim/package-lock.json
COPY package.json /packages/qiskit-sim/package.json
RUN npm install

WORKDIR /packages/qiskit-qasm
COPY package-lock.json /packages/qiskit-qasm/package-lock.json
COPY package.json /packages/qiskit-qasm/package.json
RUN npm install

WORKDIR /packages/qiskit-algo-js
COPY package-lock.json /packages/qiskit-algo-js/package-lock.json
COPY package.json /packages/qiskit-algo-js/package.json
RUN npm install

WORKDIR /packages/qiskit
COPY package-lock.json /packages/qiskit/package-lock.json
COPY package.json /packages/qiskit/package.json
RUN npm install

WORKDIR /examples/webpack
COPY package-lock.json /examples/webpack/package-lock.json
COPY package.json /examples/webpack/package.json
RUN npm install

EXPOSE 3000

CMD [ "tail", "-f", "/dev/null" ]

