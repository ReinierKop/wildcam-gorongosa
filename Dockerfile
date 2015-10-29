FROM    ubuntu

# Enable EPEL for Node.js
#RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN 	apt-get update && apt-get install -y \
    	npm \
    	nodejs-legacy

# Install app dependencies
COPY . /src
RUN cd /src; npm install

CMD ["npm", "start"]