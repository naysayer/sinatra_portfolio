# write a class that does the seeding with a seed method. e.g. class DbSeeds; def self.seed; DO IT; end; end;
#2.) run irb from your project root
#3.) require your 'root' file. e.g. MyApp.rb (i'm assuming this app is requiring all your models and everything.  If it isn't, require the file that does)
#4.) run the method that does the seeding in the seeds class.  e.g. DbSeeds.seed  (assuming seeds deletes the existing data first, if not…do that first)
class DbSeeds
	def self.seed
		Project.all.each do |project|
			project.destroy
		end
		Project.create({:display_name =>"Team Builder", :name => "team_builder", :description => "Tracking everything from funding to contact's social networking accounts Team builder is an open source application I built for Missional Digerati. Its purpose is to give missionaries a tool to track their supporters and contacts. View a live demo <a href='http://teambuilder.myftp.org/' target='_blank' >here</a>.", :category => "ruby"})
		Project.create({:display_name =>"cddn", :name => "cddn", :description => "CDDN is a social networking application built for Missional Digerati. It's goal is provide a venue in which developers and designers can donate their services to non-profits. View a live demo <a href='naysayer.no-ip.biz/' target='_blank' >here</a>.", :category => "ruby"})
		Project.create({:display_name =>"Lash Tracker", :name => "lashes", :description => "Lash Tracker is an application I built for a salon that specializes in eyelash extensions. It's interface allows employees to input the eyelash extensions used in an appointment, while ImageMagick renders a visual diagram of what the employee performed. View a live demo <a href='http://lashes.myftp.org/' target='_blank'>here</a>.", :category => "ruby"})
		Project.create({:display_name =>"CardSharp", :name => "cardsharp", :description => "Built for rails rumble 2012; CardSharp uses an mnemonic system to help it's users learn to memorize large sequences of playing cards in a very short amount of time. We teach the user to memorize cards by associating said playing card with a famous person, as well as an 'action'. Using CardSharp helps turn the phrase 'Bill Cosby sent his game after Chevy Chase' into the 2 of Clubs, Ace of Clubs, and the 3 of Clubs. I do not currently have a demo of CardSharp active, however I can provide one upon request.", :category => "ruby"})
		Project.create({:display_name =>"Car Hound", :name => "car_hound", :description => "I was brought into CarHound as a front end developer, and later implemented the Used Car section of their site as a Ruby on Rails developer. Visit CarHound <a href='http://www.carhound.com' target='_blank' >here</a>.", :category => "ruby"})
		Project.create({:display_name =>"Law Office of Patrick B. Long", :name => "long_law", :description => "I was brought into CarHound as a front end developer, and later implemented the Used Car section of their site as a Ruby on Rails developer. Visit CarHound <a href='http://www.carhound.com' target='_blank' >here</a>.", :category => "wordpress"})
	end
end