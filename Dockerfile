FROM node:latest
MAINTAINER thomas hanxuepeng001@163.com
ADD ./ ./gocd_test
WORKDIR ./gocd_test
RUN npm i
EXPOSE 5000
CMD node index.js
