ENV['RACK_ENV'] = 'test'

# Code coverage
require 'coveralls'
Coveralls.wear!

require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require 'rack/test'

require 'twitter_search'

def app
    Sinatra::Application
end

class Minitest::Spec
  include Rack::Test::Methods
end