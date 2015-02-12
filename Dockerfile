FROM dockerfile/nodejs

MAINTAINER Matthias Luebken, matthias@catalyst-zero.com

WORKDIR /home/verdant-api

# Install Mean.JS packages
ADD package.json /home/verdant-api/package.json
RUN npm install

# Make everything available for start
ADD . /home/verdant-api

# currently only works for development
ENV NODE_ENV development

# Port 5000 for server
EXPOSE 5000
CMD ["npm start"]
