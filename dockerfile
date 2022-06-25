# syntax=docker/dockerfile:1
FROM ruby:2.7
WORKDIR /web-services
RUN bundle install

EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]