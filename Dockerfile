FROM ruby:2.6.1-alpine
LABEL mantainer="kuntao <kuntaro1480@gmail.com>"

COPY . .
RUN set -x \
 && apk update \
 && apk add --no-cache --virtual build-dependencies build-base \
 && echo "gem: --no-rdoc --no-ri" > ~/.gemrc \
 && bundle install -j 4 \
 && apk del build-dependencies

EXPOSE 80
ENV RACK_ENV production
CMD ruby main.rb

