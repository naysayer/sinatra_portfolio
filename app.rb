require_relative 'base'

DB_CONFIG = YAML::load(File.open('config/database.yml'))
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