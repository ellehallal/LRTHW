module Ex25

  def Ex25.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  def Ex25.sort_words(words)
    return words.sort
  end

  def Ex25.print_first_word(words)
    word = words.shift
    puts word
  end

  def Ex25.print_last_word(words)
    word = words.pop
    return word
  end

  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end

  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

end


#Study drills

#
# Importing methods from ex25
# require "./ex25.rb"
#
# Creating variable with a string as value
# sentence = "All good things come to those who wait."
# Creating variable, setting value to the returned value of running the method and inputting sentence as argument
# words = Ex25.break_words(sentence)
# words
#
# Creating variable, setting value to the returned value of running the method and inputting words as argument
# sorted_words = Ex25.sort_words(words)
# sorted_words
#
# Calling the methods from Ex25 and inputting words variable as argument
# Ex25.print_first_word(words)
# Ex25.print_last_word(words)
# words
#
## Calling the methods from Ex25 and inputting sorted_words variable as argument
# Ex25.print_first_word(sorted_words)
# Ex25.print_last_word(sorted_words)
# sorted_words
#
# setting value of sorted words variable equal to the returned value of method
# sorted_words = Ex25.sort_sentence(sentence)
# sorted_words
#
# Calling the methods from Ex25 and inputting sorted_words variable as argument
# Ex25.print_first_and_last(sentence)
# Ex25.print_first_and_last_sorted(sentence)
