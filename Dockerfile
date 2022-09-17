FROM ruby:3
#RUN apt-get update && apt-get install \
# RUN apt-get update -qq && \
#         apt-get install -y \
#         build-essential nodejs software-properties-common libsodium23

# RUN add-apt-repository \
#         "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" && \
#         wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/postgres.gpg && \
#         apt-get update -qq && \
#         apt-get install -y \
#         libpq-dev postgresql-client-14

RUN gem update bundler

# RUN apk add \
#         postgresql-dev nodejs postgresql-client git \
#         libxml2-dev alpine-sdk tzdata less zsh \
#         gcompat
RUN mkdir /app
WORKDIR /app
ADD Gemfile* /app
# ADD vendor/gems /app/vendor/gems
RUN bundle install
ADD . /app
CMD bundle exec rails s -b 0
