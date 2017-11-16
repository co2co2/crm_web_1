require_relative 'contact'
require 'sinatra'

get '/'do
redirect to('/crm')
end

get '/crm' do
  @contacts = Contact.all
  erb :index
end

get '/contact' do
  @contacts = Contact.all
  erb :contacts
end

get '/about' do
  erb :about
end

after do
  ActiveRecord::Base.connection.close
end
