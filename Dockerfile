# Installs story-collab/Ensemble
# https://github.com/StanfordHCI/story-collab

FROM ruby:2.1
MAINTAINER David Riordan <dr@daveriordan.com>

ARG FACEBOOK_APP_ID
ARG FACEBOOK_APP_SECRET

RUN apt-get install -y git
RUN git clone https://github.com/StanfordHCI/story-collab.git
WORKDIR /story-collab

# Install Time!
# Installs without `development` gems to avoid a Ruby-1.9-only gem
RUN bundle install --without development

# Setting up to use environment variables for Facebook OAUTH config
RUN sed 's/MY_FACEBOOK_APP_ID/'"\$FACEBOOK_APP_ID"'/' config/initializers/constants.rb.sample | sed "s/MY_FACEBOOK_APP_SECRET/""\$FACEBOOK_APP_SECRET"'/' > config/initializers/constants.rb

RUN rake db:migrate

ENTRYPOINT rails server
