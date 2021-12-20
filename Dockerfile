FROM --platform=linux/x86_64 ruby:2.7.5-slim-bullseye

# Install dependencies
RUN apt-get update -qq --allow-releaseinfo-change \
  && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
  build-essential \
  zlib1g-dev \
  git \
  vim \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && truncate -s 0 /var/log/*log

# Configure gems
ENV GEM_HOME=$HOME/gems
ENV PATH=$HOME/gems/bin:$PATH

# Install jekyll and bundler
RUN gem update --system && \
  gem install jekyll bundler

RUN mkdir -p /app

WORKDIR /app
