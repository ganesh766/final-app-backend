# download the required node base image
FROM node

# set the work directory
WORKDIR /app

# install npm
# RUN apt-get update
# RUN apt-get install npm
RUN apt-get update && apt-get install npm

# copy all the files including node_modules directory
COPY . .

# EXPOSE PORT 4000
EXPOSE 4000

# start the express server
CMD node server.js