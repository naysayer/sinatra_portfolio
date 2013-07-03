# write a class that does the seeding with a seed method. e.g. class DbSeeds; def self.seed; DO IT; end; end;
#2.) run irb from your project root
#3.) require your 'root' file. e.g. MyApp.rb (i'm assuming this app is requiring all your models and everything.  If it isn't, require the file that does)
#4.) run the method that does the seeding in the seeds class.  e.g. DbSeeds.seed  (assuming seeds deletes the existing data first, if not…do that first)
class DbSeeds
	def self.seed
		Project.all.each do |project|
			project.destroy
		end
		Project.create({:name => "team_builder", :description => "Team builder is an open source application I built for Missional Digerati for missionaries to track their supporters. ", :rank => 1, :category => "ruby"})

		Project.create({:name => "cddn", :description => "blah blach lah bas fdo ovma", :rank => 2, :category => "ruby"})
		Project.create({:name => "lashes", :description => "blah blach lah bas fdo ovma", :rank => 3, :category => "ruby"})
	end
end