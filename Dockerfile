FROM node:14-alpine

RUN apk add --no-cache  \
    git \
    make \
    npm nodejs yarn \
    python3 \
    sqlite\
    vim
    


RUN mkdir -p /home/node/app/timeoff-management/node_modules && chown -R node:node /home/node/app/timeoff-management
WORKDIR /home/node/app/timeoff-management



USER root

COPY . /home/node/app/timeoff-management/
RUN cd /home/node/app/timeoff-management/
RUN yarn add sqlite3
RUN yarn 

EXPOSE 3000
CMD yarn start 

