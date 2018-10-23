class Parent

  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super() #PARENT altered()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.override()
son.override() #override of inherited override method from parent class 

dad.implicit()
son.implicit() #inherits this from parent class

dad.altered()
son.altered() #part of an override before and after, as super is inbetween
