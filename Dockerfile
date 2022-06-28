# syntax=docker/dockerfile:1
FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir -p /home/app
WORKDIR /home/app
COPY web-services/ ./
RUN bundle install

EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]


