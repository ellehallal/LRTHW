#Animal is-a object
class Animal

  def statement
    puts "I am an animal"
  end

end

#class Dog is-a Animal
class Dog < Animal

  def initialize(name)
    #class Dog has-a initialize that takes name parameter
    @name = name
  end
end

#class Cat is-a Animal
class Cat < Animal

  def initialize(name)
    #class Cat has-a initialize that takes name parameter
    @name = name
  end
end


#Person is-a object
class Person

  def initialize(name)
    #Person has-a initialize that takes name parameter
    @name = name
    @pet = nil
    @interests = []
    @cities = {}
  end

  def statement
    puts "I am a person"
  end
  #the accessor methods make it clear you intend for other classes to access these methods/attributes
  #the accessor methods make it clear you intend for other classes to access these methods
  attr_accessor :pet, :interests, :cities

  def hello
    puts "Hi my name is #{@name} and my interests include:"
    @interests.each {|interest| puts interest }
    puts "I have lived in the following cities:"
    @cities.each{|city, country| puts "#{city}, which is in #{country}"}
  end

end


#Class Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    #super -  child class Employee to inherit @name from the parent Person class
    super(name)
    #Employee has-a salary
    @salary = salary
  end

end

#Fish is-a object
class Fish
end

#class Salmon is-a Fish
class Salmon < Fish
end


# class Halibut is-a Fish
class Halibut < Fish
  def statement
    puts "I am a Fish"
  end
end



#rover is-a instance of class Dog
#rover is an object
rover = Dog.new("Rover")

#satan is-a instance of class Cat
#satan is an object
satan = Cat.new("Satan")

#mary is-a instance of class Person
#mary is an object
mary = Person.new("Mary")

#mary has a pet which is satan
mary.pet = satan

#frank is-an instance of class Employee
frank = Employee.new("Frank", 120000)

#flipper is-a instance of class fish
flipper = Fish.new()

#crouse is-a instance of class Salmon which is-a child of class Fish
crouse = Salmon.new()

#harry is-a instance of class Halibut which is-a child of class Fish
harry = Halibut.new()


#Study Drills

#1. TODO: unsure about this

#2. Class inherits from an object, therefore yes

#3.
frank.statement
satan.statement
harry.statement
# flipper.statement

#functions added to parent classes are accessible to child classes, as they also inherit them. However, functions added to child classes are not inherited by parent classes or sibling classes


#4. Added interests array and cities hash to Person class. Class person has-a list of interests and has-a hash of cities

#pets, interests and cities variables are accessible
#Added interests to the mary object along with the cities hash under mary

mary.interests.push("Cats")
mary.cities["London"] = "United Kingdom"

mary.hello


#5. Yes, where a class inherits from a number of different parent classes. This can get messy
