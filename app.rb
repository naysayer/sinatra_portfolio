# Bundler
require "rubygems"
require "bundler/setup"

# Sinatra
require "sinatra"

#active record
require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:///portfolio.db"

# The app

# model
class Project < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :rank
end

#controller/routes
class Portfolio < Sinatra::Base
  get "/" do
  	@projects = Project.all
    erb :index
  end
end