require 'sinatra'
require 'slim'

get '/' do
  slim :index
end

not_found do
  slim :not_found
end
