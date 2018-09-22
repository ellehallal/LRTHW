#to input file name when opening .rb file via command line
input_file = ARGV.first

#read file
def print_all(f)
  puts f.read
end

#go back to the beginning of the file
def rewind(f)
  f.seek(0)
end

#prints line number and contents of that line of specified file
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

#opens file entered as argument when opening .rb file
current_file = open(input_file)

#prints file contents with print_all method
puts "First let's print the whole file:\n"
print_all(current_file)

#goes to beginning of file using rewind method
puts "Now let's rewind: "
rewind(current_file)

#prints three lines using print_a_line method
#current_line is entered as argument when calling print_a_line
puts "Let's print three lines: "
current_line = 1 #1
print_a_line(current_line, current_file)

current_line += 1 #2
print_a_line(current_line, current_file)

current_line += 1 #3
print_a_line(current_line, current_file)

#Study drills

#4. Seek goes to a specific position in the file. The specific position is indicated by the number entered as an argument

#5. += adds what is on the right to variable on the left
