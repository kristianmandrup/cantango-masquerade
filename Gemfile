source :rubygems

group :default do
  gem 'rails',            '>= 3.1'
  gem 'sugar-high',       '~> 0.6.2'
  gem 'sweetloader',      '~> 0.1.6'
  gem 'hashie',           '~> 1.2'
  
  gem 'cantango-core',    '>= 0.1.9.1'
end

group :development do
  gem "bundler",  ">= 1.1.rc"
  gem "jeweler",  ">= 1.6.4"
  gem "rcov", ">= 0"
end

group :test do
  gem 'require_all', '~> 1.2.0'

  gem 'cantango-config',  '>= 0.1.8.1'
  gem 'cantango-api'

  gem 'forgery'
  gem 'sqlite3'
  # Data
  gem 'database_cleaner'
  gem 'factory_girl'

  # Specs
  gem 'spork'

  # Debug and performance tests
  gem 'cutter'
end

group :test, :development do
  gem "rspec",    ">= 2.6.0"
end
