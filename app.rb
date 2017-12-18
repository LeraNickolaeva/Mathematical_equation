require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'haml'
require 'pry'

require './lib/equation'
require './lib/linear_equation'
require './lib/quadratic_equation'

set :public_folder, 'public'

get '/' do
  haml :index
end

post '/' do
  @answer = Equation.new(params).solve
  json result: @answer.to_s
end
