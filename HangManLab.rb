n = 0

def draw_man (n)
	if n == 0
		puts "\n____________"
		puts    "|      "
		puts   "|"
		puts  "|"
		puts  "|"
		puts "|"
		puts "|"
		puts "-----------"

	end
	if n == 1
		puts "\n____________"
		puts    "|      |"
		puts   "|"
		puts  "|"
		puts  "|"
		puts "|"
		puts "|"
		puts "-----------"

	end
	if n == 2
		puts "____________
         |      |
	       |      O
	       |
	       |
      	 |
	       |
	       -----------
"
	end
	if n == 3
		puts "____________
         |      |
	       |      O
	       |      |
	       |
      	 |
	       |
	       -----------
"
	end
end
if n == 4
	puts "____________
         |      |
	       |      O
	       |     /|
	       |
      	 |
	       |
	       -----------
"
end
if n == 5
	puts '____________
         |      |
	       |      O
	       |     /|\
	       |
      	 |
	       |
	       -----------
'
end
if n == 6
	puts '____________
         |      |
	       |      O
	       |     /|\
	       |      |
      	 |
	       |
	       -----------
'
	if n == 7
		puts '____________
         |      |
	       |      O
	       |     /|\
	       |      |
      	 |     /
	       |
	       -----------
'
	end
	if n == 8
		puts '____________
         |      |
	       |      O
	       |     /|\
	       |      |
      	 |     / \
	       |
	       -----------
'
	end
end

def display_guess_progress (guessed_letters, my_word_array)
	my_word_array.each do |current_letter|
		if guessed_letters.include? current_letter
			print current_letter
		else
			print "_ "
		end
	end
end

my_word = "myth"
my_word_array = my_word.split ""
guessed_letters = []

def check_winner(guessed_letters, my_word_array)
	count = 0
	my_word_array.each do |current_letter|
		if guessed_letters.include? current_letter
			count = count + 1
		end
	end
	if count == my_word_array.count
		return true
	else
		return false
	end
end

until check_winner(guessed_letters, my_word_array)
	puts "\nWhat letter will you guess?"
	letter_guessed = gets.chomp
	guessed_letters.push(letter_guessed)
	display_guess_progress(guessed_letters, my_word_array)
	draw_man(guessed_letters.count)
end

if check_winner(guessed_letters, my_word_array)
	puts "\nYOU WIN!!!"
end

