FROM ruby:3.3.0

RUN apt-get update -qq && apt-get install -y build-essential nodejs

RUN gem install bundler

RUN mkdir /app

WORKDIR /app

# Gem
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

ENV RAILS_ENV production

COPY . .

COPY init.sql /docker-entrypoint-initdb.d/