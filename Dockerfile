FROM ruby:2.4.1-alpine
MAINTAINER Kuntaro Ishiyama <kuntaro1480@gmail.com>

COPY . .
RUN echo "gem: --no-rdoc --no-ri" > ~/.gemrc
RUN bundle install

ENV RACK_ENV production
CMD ruby main.rb