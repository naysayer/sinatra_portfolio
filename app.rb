require 'rubygems'
require 'sinatra'
require 'data_mapper'
require './seed'
require 'pony'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/dev.db")

class Project
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, Text
  property :category, String
  property :display_name, String
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @projects = Project.all
  erb :index
end

post '/contact' do
   name = params[:name]
   email = params[:email]
   message = params[:message]

   @options = {
       :to => "name <email@example.com>",
       :from => email,
       :subject=> "Contact Form",
       :body => message,
       :via => :smtp, :via_options => {
         :address => 'smtp.gmail.com',
         :port => '587',
         :user_name => 'gmailaccount',
         :password => 'gmailpass',
         :authentication => :plain,
         :domain => "example.com"
        },
       :headers => { "Reply-To" => params[:email] }
        
     }
   Pony.mail(@options)
    
   redirect '/' 
end

