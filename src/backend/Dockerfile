FROM node:22-alpine AS base

# Directory used in container
WORKDIR /usr/backend/

# Copy everything
COPY . .

# Install TypeScript. Needed for build process.
RUN npm i -D typescript

# Compile to JavaScript build 
RUN npm run build


##################
### PROD IMAGE ###
##################
FROM node:22-alpine AS prod
ENV NODE_ENV=production

# Add curl for health check
RUN apk --update --no-cache add curl

# Directory used in container
WORKDIR /usr/backend/

# Install packages. Needed even for compiled build.
COPY package.json .
RUN npm i

# Copy compiled build from base
COPY --from=base /usr/backend/dist .
# Copy swagger over too
COPY --from=base /usr/backend/src/swagger ./src/swagger

CMD [ "node", "src/server.js" ]
