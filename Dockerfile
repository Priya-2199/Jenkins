FROM node:alpine
WORKDIR /usr/src/app
#COPY angular-app/frontend/package.json .
COPY angular-app/frontend/ .
RUN ls -la
#RUN apt-get update && curl -sL https://deb.nodesource.com/setup | bash - && apt-get install -y nodejs
RUN npm install
#COPY angular-app/frontend/ ./
EXPOSE 4200
#CMD ["/usr/lib/node_modules", "npm", "run"]
ENTRYPOINT ["npm", "start"]
