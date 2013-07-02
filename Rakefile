require './app'

require 'sinatra/activerecord/rake'

namespace :db do
  
  desc "Erase all data and fill database with example data"
  task :populate => :db do
    
    puts "deleting data now"
    Project.delete_all

    Project.create({:name => "team_builder", :description => "blah blach lah bas fdo ovma", :rank => 1})
    Project.create({:name => "cddn", :description => "blah blach lah bas fdo ovma", :rank => 2})
    Project.create({:name => "cddn", :description => "blah blach lah bas fdo ovma", :rank => 2})

  end
end