#Image
 FROM node:16-alpine

#Creating a new directory to copy our source code to there
 RUN mkdir -p /usr/src
 WORKDIR /usr/src

#Copying the entire source code /usr/app
 COPY . /usr/src

#Install Dependencies
 RUN npm install
 RUN npm run build

#exposing port to listen
 EXPOSE 8080
 
#start server
 CMD [ "npm","start" ]
