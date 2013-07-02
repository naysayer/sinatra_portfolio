# Bundler
require "rubygems"
require "bundler/setup"

#active record / sinatra
require 'sinatra'
require 'sinatra/activerecord'

class SinatraRecord < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  configure :development do
    set :database, 'sqlite:///db/development.sqlite3'
  end

  configure :production do
    set :database, 'sqlite:///db/productions.sqlite3'
  end

  configure :test do
    set :database, 'sqlite:///db/test.sqlite3'
  end

end