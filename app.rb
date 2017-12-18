require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'haml'
require 'pry'

require './lib/equation'
require './lib/linear_equation'
require './lib/quadratic_equation'

set :public_folder, 'public'

# Logic for protecting only certain URLs in the application
# helpers do
#   def protected!
#     return if authorized?
#     headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
#     halt 401, "Not authorized"
#   end

#   def authorized?
#     @auth ||=  Rack::Auth::Basic::Request.new(request.env)
#     @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
#   end
# end

get '/' do
  haml :index
end

post '/' do
  @answer = Equation.new(params).solve
  json result: @answer.to_s
end
