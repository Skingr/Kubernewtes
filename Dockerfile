#--Base image for Docker
# Nodejs image ver14
# environment w/ nodeJs + npm installed
FROM node:14
#Sets working directory to /app
WORKDIR /app
#Copies package.json and package-lock.json from preoj direwctory to the current working direcory
COPY package*.json ./
#runs npm install command in container
#allows Docker to cache installed modules (cache-temp storage on device mem)
RUN npm install
## Copies all files and directories from curr directory on host
#
COPY . .
#port 3000 at runtime
EXPOSE 3000
#specifies command to run when container starts
CMD ["npm", "start"]:

# This Dockerfile creates an image that contains your Node.js 
#application, with all its dependencies installed, ready 
#to run your server when a container is started from this image.
#frogs-epic1 F E 