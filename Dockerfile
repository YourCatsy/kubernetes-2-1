FROM ruby:3.3.1

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install Bundler dependencies
RUN gem install bundler && bundle install

# Precompile assets
RUN bundle exec rake assets:precompile

# Expose port
EXPOSE 80

# Start server
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "80"]