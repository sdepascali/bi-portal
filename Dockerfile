FROM        ubuntu:14.04

MAINTAINER  Megam <gomegam@megam.co.in>

# Install Node.js and npm
RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get -y install npm

# Bundle app source
ADD . /home/rajthilak/code/megam/workspace/nodejs/portal
WORKDIR /home/rajthilak/code/megam/workspace/nodejs/portal

ENV PORTAL_HOST 127.0.0.1
# Install app dependencies
RUN npm install

EXPOSE 1880
CMD ["nodejs", "portal.js"]
