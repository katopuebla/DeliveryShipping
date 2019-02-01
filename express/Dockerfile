##################################################################
# Dockerfile para configurar la aplicacion en node-js - Express  #
##################################################################

# Establese la imagen base
FROM node:8

# Información de Metadata
LABEL maintainer="katopuebla@gmail.com"
LABEL version="1.0"

#ENV http_proxy "http://mxproxy.infosec.fedex.com:3128"
#ENV https_proxy "http://mxproxy.infosec.fedex.com:3128"

# Create app directory
# es: Crea un directorio de trabajo
# RUN mkdir -p /opt/app

# Create app directory
# es: Se establese el directorio de trabajo
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# es: Instala los paquetes existentes en el package.pagson
COPY package*.json ./
# RUN npm install
RUN npm install --quiet

# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
# es:  Copia la aplicación
COPY . .

# Espone la aplicación en el puerto 3000
EXPOSE 3000

# FROM ubuntu


#Inicia la aplicación al iniciar el contenedor
CMD [ "npm", "start" ]