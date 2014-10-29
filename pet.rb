class Pet

	def initialize name
		@name = name
		@hp = 100
		@stamina = 100
		@mood = 10
		@asleep = false
		@stuffInBelly = 8
		@poop = 0
		@loyalty = 100
		puts "I\'am #{@name}, your new friend!"
	end

	def help
		all_meth = ['feed', 'walk', 'putToBed', 'toss', 'rock', 'play', 'stroke', 'goToWet', 'date']
		puts "Now, when you have a new friend called #{@name}, you can do the following with it:"
		print all_meth
	end
	
	def goToWet
		puts "You go with #{@name} to a veterinary clinic"
		@hp = 100
		@stamina = 100
	end
	
	def date
		puts "Your friend #{@name} meets with a girlfriend"
		if @loyalty <= 80
			@loyalty + 20	
		else
			puts 'Your pet is extremely happy'
		end

		@stamina = @stamina - 20
			passageOfTime
			@mood = 10
	end
	
	
	def wash
		puts "You wash your pet. He is very happy."
		@poop = 0
		if @mood > 0
			@mood = @mood -1
		else
			puts "#{@name} is so angry that he leaves you and runs away"
		end
	end

	def play
		puts "You are playing with your pet called #{@name}"

		if @loyalty <= 80
			@loyalty + 20	
		else
			puts 'Your pet is extremely happy'
		end
		unless @mood == 10
		 @mood + 1
		end

			passageOfTime	
	end

	def feed
		puts 'You feed ' + @name +
		@stuffInBelly = 10
		unless @mood == 10
		 @mood + 1
		end
		passageOfTime
	end
	
	def walk
		puts "You walk with  #{@name}."
		@poop = 0
		passageOfTime
	end

	def stroke
		puts "You stroke #{@name}."
		if @loyalty <= 80
			@loyalty + 20	
		else
			puts 'Your pet is extremely happy'
		end
		passageOfTime
	end

	def putToBed
		puts 'You put to bed ' + @name + '.'
		@asleep = true
		3.times do
			if @asleep
			passageOfTime
			end
			if @asleep
			puts @name + 'is sleeping soundly'
			end
		end
		sleep 3
			if @asleep
			@asleep = false
			puts @name + "#{@name}  is waiking up gradually."
			end
	end

	def toss
		puts "You toss #{@name} and he smiles and loves you much"
		if @loyalty <= 80
			@loyalty + 20	
		else
			puts 'Your pet is extremely happy'
		end
		passageOfTime
	end
	
	def rock
		puts "You gently rock #{@name}"
		@asleep = true
		puts 'He falls asleep fast...'
		passageOfTime
			if @asleep
				@asleep = false
				puts '...he wakes up when you stop rocking him.'
			end
end



	private

	def hungry?
		@stuffInBelly <= 2
	end

	def moody?
		@mood <= 2
	end

	def shitty?
		@poop >=8
	end

	def passageOfTime 
		if @stuffInBelly > 0
			@stuffInBelly = @stuffInBelly - 1
			@poop = @poop + 1
		

				if @hp >= 20
					@hp = @hp - 20
				else
					puts 'Your pet has died'
					exit
				end

				if @stamina >= 20
					@stamina = @stamina - 20
				else
					puts 'Your pet has died'
					exit
				end
			else	
		
		if @asleep
			@asleep = false
			puts 'He wakes up abruptly'
		end
			puts  "#{@name} is so hungry that he eates you..."
		exit
		end
		
		if @poop >= 10
			@poop = 0
			puts "Oops! #{@name} has made some bad thing"
		end

		if moody?
				@asleep = true
				puts 'He falls asleep boared with you.'
		end

		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up abruptly'
			end
			puts "#{@name}\' stomach is roaring..."
		end

		if shitty?
			if @asleep
				@asleep = false
				puts 'He wakes up abruptly!'
			end
		puts "#{@name} can\'t wait to walk..."
		end
	end

	
end


pet = Pet.new 'Buddy'
pet.help
pet.walk
pet.wash
pet.play
pet.putToBed
pet.goToWet