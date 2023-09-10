FROM node:17.9
WORKDIR /usr/src/
RUN git clone --depth 1 --branch $(RELEASE_TAG) https://github.com/porsager/flems
WORKDIR /usr/src/flems
RUN npm install ;\
    npm run build:standalone; \
    npm install -g serve

COPY index.html /usr/src/flems/dist/index.html

CMD ["npx", "serve", "-p", "80", "/usr/src/flems/dist/"]
