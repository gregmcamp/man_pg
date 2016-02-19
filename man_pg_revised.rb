# everything broken down to methods

#defining the main menu as a method, asking for numeric input, made case w/when & else for results
def show_menu
	puts """ MAN PAGE CHEATSHEET
		1: Command Line
		2: Search
		3: Exit
		--- Make your selection---"""
	input = get_input
	case input 
		when 1
			show_cmd_line
			input = get_input
			cmd_line(input)
		when 2 
			search	
		when 3
			exit (0)
		else	
			puts "Invalid Selection"
	end	
end

#define method to show the command line menu
def show_cmd_line
	puts """
			COMMAND LINE
			1: cp
			2: mv
			3: cd
			4: ls
			5: mkdir
			6: rm
			7: Main Menu"""
end

#define the search function within the main menu
def search
	puts "What would you like to search?"
	query = gets.strip.downcase
	puts `man #{query}`
	show_menu
end

#method for numeric searches - this in input into our show_menu method
def get_input
	gets.strip.to_i
end

#method for searching the man pages with backticks aka shell commands
def cmd_line(input)
	case input
	when 1
		puts `man cp`
	when 2
		puts `man mv`
	when 3	
		puts `man cd`
	when 4	
		puts `man ls`
	when 5
		puts `man mkdir`
	when 6
		puts `man rm`		
	when 7
		show_menu
	else
		puts "Invalid Selection"			
	end
	show_menu
end

show_menu