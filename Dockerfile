FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y nodejs mariadb-client
RUN mkdir /chat-memo
WORKDIR /chat-memo
COPY Gemfile /chat-memo/Gemfile
COPY Gemfile.lock /chat-memo/Gemfile.lock
RUN bundle install
COPY . /chat-memo

