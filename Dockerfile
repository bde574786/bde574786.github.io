FROM ruby:3.1

WORKDIR /srv/jekyll

COPY . .

# using Jekyll
RUN gem build jekyll-theme-chirpy.gemspec 
RUN gem install ./jekyll-theme-chirpy-7.1.1.gem
RUN bundle install

CMD  ["jekyll", "serve", "--host", "0.0.0.0", "--port", "4000"]