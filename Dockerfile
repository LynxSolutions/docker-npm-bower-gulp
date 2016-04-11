# Pull base image.
FROM node:0.12.9-slim
MAINTAINER Nimrod Nagy <nimrod.nagy@lynxsolutions.eu>

# Install git
RUN apt-get update && apt-get install -y git rsync bzip2

# Global install gulp and bower
RUN npm set progress=false && \
    npm install -g gulp grunt bower phantomjs && \
    echo '{ "allow_root": true }' > /root/.bowerrc

# Binary may be called nodejs instead of node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Define working directory.
WORKDIR /workspace
