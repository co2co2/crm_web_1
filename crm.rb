require_relative 'contact'
require 'sinatra'



get '/crm' do
  # instructions for what to do when user visits '/home' will go here
  erb :index
end
