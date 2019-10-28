module Saying
  def say()
    @name
  end

end

class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  include Saying
  def initialize(name)
    super(name)
  end
end


class Cat < Animal
  include Saying
  def initialize(name)
    super
  end
end


class Person

  def initialize(name)
    @name = name

    @pet = nil
  end

  attr_accessor :pet  #def pet=(value) @pet = value end def pet @pet end

  def who()
    puts "#{@name} is person and has a pet #{@pet.say}"
  end

end


class Employee < Person

  def initialize(name, salary)
    super(name)
    @salary = salary
  end

  def salary()
    puts "#{@name} salary is #{@salary}"
  end
end


class Fish
end


class Salmon < Fish
end

class Halibut < Fish
end


rover = Dog.new("Rover")
puts "#{rover.say} is dog"

satan = Cat.new("Satan")
puts "#{satan.say} is cat"


mary = Person.new("Mary")
mary.pet = satan
mary.who


frank = Employee.new("Frank", 120_000)
frank.salary

flipper = Fish.new()

crouse = Salmon.new()

harry = Halibut.new()
