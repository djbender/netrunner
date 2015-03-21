source 'https://rubygems.org'

group :test do
  gem 'coveralls'
  gem 'rspec', '>= 3'
  gem 'rubocop'
  gem 'simplecov'
  gem 'shoulda-matchers'
end

group :development do
  gem 'guard-rspec', github: 'guard/guard-rspec', branch: :master
  gem 'guard-rubocop'
  gem 'mutant-rspec'
end

group :development, :test do
  gem 'byebug'
end

gemspec
