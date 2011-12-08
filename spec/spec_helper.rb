require 'rspec'

require 'cantango/core'
require 'cantango/configuration'
# require 'cantango/api'

require 'cantango/masquerade'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  
end
