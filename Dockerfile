FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y nodejs
WORKDIR /web
COPY Gemfile /web/Gemfile
COPY Gemfile.lock /web/Gemfile.lock
RUN bundle install

# Add logic to handle every time container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000

# Containers started, then run script to run rails app
CMD [ "rails", "s", "-b", "0.0.0.0" ]