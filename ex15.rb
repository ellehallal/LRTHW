# sets file that will be added as argument when opening the file to the filename variable
filename = ARGV.first

# sets txt variable to the open file. Open creates a file object
txt = open(filename)

#reads the file and prints it
puts "Here's your file #{filename}: "
print txt.read
txt.close()

print "Type the filename again: "

#set file_again variable to user input
file_again = $stdin.gets.chomp

# sets txt_again variable to the open file
txt_again = open(file_again)

#reads the file and prints it
print txt_again.read
txt.close()

#test
# print "Type the filename again: "
# test = $stdin.gets.chomp

#Study drills

#5. gets.chomp doesn't appear to work when ARGV is used
