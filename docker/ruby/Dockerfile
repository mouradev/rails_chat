FROM ruby:2.7.2

RUN apt-get update -qq &&\
    apt-get -y install curl &&\
    curl -sL https://deb.nodesource.com/setup_10.x | bash - &&\
    apt-get -y install nodejs &&\
    ln -s /usr/bin/nodejs /usr/local/bin/node

WORKDIR /app

RUN npm install -g yarn

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

ENV BUNDLER_VERSION 2.2.7
RUN gem update --system --quiet \
    && gem install bundler -v $BUNDLER_VERSION --quiet

RUN gem install rails
RUN bundle install
RUN yarn install

COPY . /app

COPY ./docker/ruby/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
