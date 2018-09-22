filename = ARGV.first

openfile = open(filename, 'w')

puts "Add your new text: "
newtext = $stdin.gets.chomp

openfile.write(newtext)

openfile.close
