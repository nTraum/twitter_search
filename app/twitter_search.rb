require 'sinatra/base'
require 'sinatra/config_file'
require 'slim'


class TwitterSearch < Sinatra::Application
  register Sinatra::ConfigFile

  config_file File.expand_path('../config/config.yml', __FILE__)

  #
  get '/' do
    slim :index
  end

  # Renders a generic 404 page when the requested URL could not be found
  not_found do
    slim :not_found
  end
end
