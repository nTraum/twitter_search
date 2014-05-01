require 'test_helper'

describe 'twitter_search app' do
  it 'must get /' do
    get '/'
    last_response.ok?.must_equal true
  end


  describe 'error pages' do
    it 'must display 404 / not found' do
      get '/path_that_does_not_exist'
      last_response.not_found?.must_equal true
      last_response.body.must_match /404/
    end
  end
end