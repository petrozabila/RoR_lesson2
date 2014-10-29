class MagicCube
	

	def initialize
		answer = ['As i seeit, yes', 'Most likely', 'Outlook good', 'Signs point to yes', 'Yes', 'Reply hazy, try again', 'Ask again later', 'Better not tell you now', 'Cannot predict now', 'Concentrate and ask again', 'Don\'t count on it', 'My reply is no', 'My sources say no', 'Outlook not so good', 'Very doubful']
		@rand_answer = answer[rand(answer.length)]
	end
	
	
	def shake
		question = gets.chomp
		puts "You asked me: #{question}"
		sleep 3
		puts "Your answer is: #{@rand_answer}"
	end

end

MagicCube.new.shake


