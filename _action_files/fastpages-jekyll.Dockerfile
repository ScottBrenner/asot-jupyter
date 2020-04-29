# Defines https://hub.docker.com/repository/docker/hamelsmu/fastpages-jekyll
FROM jekyll/jekyll:4.0.0

COPY . .

# Pre-load all gems into the environment
RUN gem install bundler
RUN chmod -R 777 .
RUN chown jekyll:jekyll -R /usr/gem
RUN chown -R jekyll:jekyll /srv/jekyll
RUN jekyll build
