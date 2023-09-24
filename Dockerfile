FROM node:18-alpine

LABEL org.opencontainers.image.source=https://github.com/checkin24/newman
LABEL org.opencontainers.image.description="Newman container"

RUN npm install --global newman newman-reporter-htmlextra newman-reporter-junitfull

WORKDIR /etc/newman
ENTRYPOINT ["newman"]