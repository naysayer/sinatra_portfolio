require 'rubygems'
require 'sinatra'
require 'data_mapper'
require './seed'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/dev.db")

class Project
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :description, Text
  property :category, String
  property :rank, Integer
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @projects = Project.all
  erb :index
end