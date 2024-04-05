FROM ruby:3.3.0-slim-bullseye

WORKDIR /app

RUN apt-get update -qq && apt-get install -y build-essential sqlite3 libsqlite3-dev && gem install rails -v 7.1.3.2

COPY . .

RUN bundle install

EXPOSE 5000
