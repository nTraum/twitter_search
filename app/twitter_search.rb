require 'sinatra/base'
require 'slim'


class TwitterSearch < Sinatra::Application
  get '/' do
    slim :index
  end

  not_found do
    slim :not_found
  end
end
