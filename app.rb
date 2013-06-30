# Bundler
require "rubygems"
require "bundler/setup"

# Sinatra
require "sinatra"

# The app
class Portfolio < Sinatra::Base
  get "/" do
    "this is a test for setting up sinatra applications"
  end
end