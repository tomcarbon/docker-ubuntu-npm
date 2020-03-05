#pull base image
FROM ubuntu:18.04

# apply updates and install a bunch of things
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget iputils-ping && \
  apt-get install -y nodejs npm

#install yarn and create a generic react-app project
#WORKDIR /app
#RUN npm install yarn -g
#RUN yarn create react-app generic-project

#copy our generic app to replace the generic react-app project
#COPY src/ /app/generic-project/src/
#COPY public/ /app/generic-project/public/
#COPY package.json /app/generic-project/

# just copy these things to the container for safekeeping
#COPY Dockerfile /app/generic-project/
#COPY LICENSE /app/generic-project/
#COPY README.md /app/generic-project/

#install react-bootstrap
#WORKDIR /app/generic-project
#RUN yarn add react-bootstrap
#RUN yarn install

#run the server
#EXPOSE 80
#CMD ["yarn","start"]

CMD ["bash"]
