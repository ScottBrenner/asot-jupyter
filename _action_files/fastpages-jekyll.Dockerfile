# Defines https://hub.docker.com/repository/docker/fastai/fastpages-jekyll
FROM jekyll/jekyll:4

COPY . .
RUN chmod -R 777 .
RUN gem install bundler 
RUN jekyll build
