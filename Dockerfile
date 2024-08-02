FROM node:18.16.0

# work  directory
WORKDIR /src/app

#install dependencies
COPY package*.json ./

# Build the app
RUN npm install

# copy the files
COPY . .

# Run the app
CMD ["npm","start"]

# set environment variable
ENV PORT=3000
ENV CONNECTION_URL_LOCAL=mongodb://127.0.0.1:27017/saraha
ENV SALTS_NUMPER=12