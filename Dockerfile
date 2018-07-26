FROM ruby:2.5.1

LABEL maintainer="CK"

RUN apt-get update && apt-get install -qq -y build-essential nodejs libpq-dev --fix-missing --no-install-recommends

ENV INSTALL_PATH /app

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY . .

RUN bundle install

RUN rails assets:precompile

# The starting command is taken from docker-compose.yml since we are using that to run this, and the postgresql, containers
# CMD ["bundle", "exec", "rails", "s"]
