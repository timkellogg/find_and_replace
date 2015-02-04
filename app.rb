require 'sinatra'
require 'rspec'
require './lib/find_and_replace.rb'
require 'pry'



get '/' do
  erb(:input)  
end 


get '/output' do
  @replace_with = params.fetch('replace_with')
  @to_replace = params.fetch('to_replace')
  @output = params.fetch('input_string').find_and_replace(@to_replace, @replace_with)            
  erb(:output)
end 