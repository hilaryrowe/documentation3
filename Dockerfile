FROM node:4.4.7-wheezy
MAINTAINER DevOps <ops@sightmachine.com>

# install NPM gitbook
RUN npm install gitbook-cli -g

# install gitbook versions
RUN gitbook fetch 2.6.7

ENV BOOKDIR /gitbook

VOLUME $BOOKDIR

EXPOSE 4000

WORKDIR $BOOKDIR

CMD ["gitbook", "--help"]
