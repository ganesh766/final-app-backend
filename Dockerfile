# download the required node base image
FROM node:alpine

# set the work directory
WORKDIR /app

# copy all the files including node_modules directory
COPY . .

# EXPOSE PORT 4000
EXPOSE 4000

# start the express server
CMD node server.js