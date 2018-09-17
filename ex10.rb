tabby_cat = "\tI'm tabbed in"
persian_cat = "I'm split\non a line"
backslash_cat = "I'm \\ a \\ cat"

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

#Study drills

# 2. Using a triple quote string is easier than using the \n escape character for each line
puts """
I am a long
long
looooooong
string
"""

#3. Combine escape sequences and format strings to create a more complex format.

puts "Hello\rworld.\nI am on a \"new\" \tline #{fat_cat}"
