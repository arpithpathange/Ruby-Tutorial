require 'twitter' #gem install twitter
while true
	begin
	
		puts "eeeee"
		config = {
			consumer_key:"rpmQLClfhWNVR9fgSxIMyg",
			consumer_secret:"W3x7qYiniikhnMPM3IhuGfVebTUVzh4DlfOuELzqP08",
			#access_token:        '',
			#access_token_secret: ''
		}
		puts "aaaaa"
		rClient = Twitter::REST::Client.new config
		sClient = Twitter::Streaming::Client.new(config)
 		puts "111111"
		# topics to watch
		topics = ['#rails', '#ruby', '#coding', '#codepen']
		sClient.filter(:track => topics.join(',')) do |tweet|
			if tweet.is_a?(Twitter::Tweet)
			  puts tweet.text 
			  rClient.fav tweet
			end
		end
	rescue
		puts 'error occurred, waiting for 5 seconds'
		sleep 5
	end
 
end
