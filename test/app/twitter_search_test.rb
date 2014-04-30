require 'test_helper'

describe 'twitter_search app' do
  it 'must get /' do
    get '/'
    last_response.ok?.must_equal true
  end
end