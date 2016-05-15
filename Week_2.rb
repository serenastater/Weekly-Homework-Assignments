# Assignments from Week 2, Advanced Ruby
# April 11 - April 15, 2016

# Let’s practice our method writing syntax! Prepare a method say_hello
# that takes one argument. That argument is the name of the person to
# be greeted. The method should then print on the screen a greeting
# to that person. For example:
#
# say_hello('Jack')
# => "Why, hello there Jack!"

def say_hello(name)
  puts "Hello, #{name}!"
end

say_hello "Serena"

# Using the TDD technique, fix the add_two method so that it works
# with Strings. Use this code to get started.
#
# # Add 2 to the number.
# def add_two(number)
#   if number.respond_to? :+
#     if number.respond_to? :push
#       number.push 2
#     else
#       number + 2
#     end
#   end
# end
#
# def test_add_two
#     p add_two(1)
#     p add_two(1.0)
#     p add_two(nil)
#     p add_two({})
#     p add_two([])
#     p add_two(false)
# end
#
# test_add_two

def add_two(number)
  if number.respond_to? :+
    if number.respond_to? :push
      number.push 2
    elsif number.class == String
    else
      number + 2
    end
  end
end

def test_add_two
    p add_two(1)
    p add_two(1.0)
    p add_two(nil)
    p add_two({})
    p add_two([])
    p add_two(false)
    p add_two("")
end

test_add_two

# pets = ["Scooby", "Soco", "Summer", "Pixie", "Wilson", "Mason",
#         "Baron", "Brinkley", "Bella"]
#
# Write a method that takes in the pets array as a parameter. Inside that
# method, iterate over the array using the each method. If the name starts
# with an “S”, output the message “My name starts with an S for super!” If
# the name does not begin with an “S” output the message: “I’m still
# pretty special too!”.

pets = ["Scooby", "Soco", "Summer", "Pixie", "Wilson", "Mason",
        "Baron", "Brinkley", "Bella"]

def super_or_not(pets)
  pets.each do |pets|
    if pets.start_with?("S")
      puts "My name starts with an S for super!"
    else
      puts "I'm still pretty special too!"
    end
  end
end

super_or_not(pets)

# Define a method named max that takes two numbers as arguments and
# returns the largest of them.
#
# Don’t worry about being defensive with this one. Assume the arguments
# are numeric. But still, make sure you write tests! Submit both your
# method and the test(s) for that method.

def max(number_1, number_2)
  if number_1 > number_2
    number_1
  else
    number_2
  end
end

def test
  puts max(2, 3) == 3
  puts max(3, 2) == 3
end

# Refactor your max method to find the max of any number of arguments.
# Again, show us your tests!

def max(*k)
  k.max
end

def test
  puts max("hi", "angel", "Zebra") == "hi"
  puts max(76, 0.12, -1) == 76
end

# Write a program that prints the numbers 1 to 100, however:
#
# 1) If the number is a multiple of 3 print "Fizz" instead of the number.
# 2) If the number is a multiple of 5 print "Buzz" instead of the number.
# 3) For the numbers which are multiples of both 3 and 5 print "FizzBuzz"
# instead of the number.

def fizzbuzz
  container = []
  (1..100).each do |a_number|
    if a_number % 15 == 0
      container << "FizzBuzz"
    elsif a_number % 3 == 0
      container << "Fizz"
    elsif a_number % 5 == 0
      container << "Buzz"
    else
      container << a_number
    end
  end
container
end

puts fizzbuzz

# In whichever directory you are storing your work here at Wyncode,
# go ahead and create a world.rb file. We’re going to begin creating
# a new world. Open that file and create a class Person. This is the
# factory that people in your world will be made from. New Person are
# born by calling Person.new. Let’s create a new person sandy, by
# setting Person.new equal to sandy. When we make these Person, however,
# they don’t have any attributes. For example, let’s try to see what
# sandy’s hair color is by calling sandy.hair_color. You should get an
# error. So let’s give our Person class an attribute of hair_color so
# you can assign, read, and write sandy’s hair_color (or any instance
# of the Person class). Now set sandy’s hair color. Submit all of your
# code in the world.rb file.

class Person
  attr_accessor :hair_color

  def initialize
    @hair_color = hair_color
  end
end

sandy = Person.new

sandy.hair_color = "red"

# Let’s continue with our Person. Now each instance has a descriptive
# attribute, but they do not have any behaviors. Give Person the ability
# to sing. The method should puts to the terminal a line from your
# favorite song. Now let’s continue with sandy and make her sing. Submit
# all the code in your world.rb file.

class Person
  attr_accessor :hair_color
  attr_accessor :lyrics

  def initialize
    @hair_color = hair_color
    @lyrics = lyrics
  end

  def sing (lyrics)
    puts lyrics
  end
end

sandy = Person.new

sandy.hair_color = "red"

puts sandy.sing("what is happening")

# Let’s keep working on these people( Person class). Now you can read
# and write to each persons’ hair_color attribute, they also have the
# ability to sing. However, when new people are “born”, their hair_color
# is nil. Go ahead and define the initialize method so that when you
# call Person.new you can pass their hair_color AND their name as an
# argument. Just remember when we call Person.new, Ruby will automatically
# look for and call the initialize method belonging to that class. You
# will also want to update your attr_accessor method as well to include
# name. Now create a new instance of Person with the hair color and name
# of your choice. Submit all the necessary code in your world.rb file.

class Person
  attr_accessor :hair_color, :name

  def initialize(hair_color, name)
    @hair_color = hair_color
    @name = name
  end

  def sing
    @sing = "lyrics"
  end
end

you_guys_are_killing_me = Person.new("red_hot", "you_guys_are_killing_me")

# Continuing in our world.rb file, let’s call puts and p on Wyncoder.new.
# See that ugly output, let’s change that.
#
# puts needs a string to print in the console. When we call puts on an
# object, Ruby will automatically call a method named to_s. Many different
# classes in Ruby implement a .to_s method to create a string representation
# of themselves. Because of this convention, puts calls .to_s to convert
# the object into a string. If the Class in question doesn’t implement .to_s,
# it will just climb up the inheritance chain, until it reaches Object, which
# implements the .to_s you saw here.
#
# Before you attempt the question, look up the to_s method for an array, a
# string, and an object in the Ruby standard library.
#
# Let’s override that by defining our own to_s method for the Wyncoder class
# that returns a readable string (the string can contain whatever you’d like).
#
# The p method works similarly, except Ruby automatically calls the inspect
# method on the object. Create a new inspect method for the Wyncoder class
# that returns a readable string as well.
#
# Now call puts and p on Wyncoder.new, see the difference?

class Wyncoder
    def to_s
        "to_s"
    end
    def inspect
        "inpect"
    end
end

puts Wyncoder.new
p Wyncoder.new

# A DSL (domain-specific language) is a technique for writing Ruby code
# in such a way that it’s readable as a new language optimized for a
# particular problem or use case.
#
# You start with the way you’d like the code to read, then go back and
# make that code do what you want it to do.
#
# Create a ruby file, quick_fox.rb and paste the following line of code into it:
#
# quick_fox.jumped_over(lazy_dog, daisy_log)
#
# Write just enough code before that line to make it not return any errors.

class Fox
  def jumped_over(a,b)
  end
end

lazy_dog = ""
daisy_log = ""
quick_fox = Fox.new
quick_fox.jumped_over(lazy_dog, daisy_log)

# Define a class, Quadrilateral. Now, model this concept in Ruby
# using classes and inheritance:
#
# A rectangle, square, rhombus, and trapezoid are all types of quadrilaterals.
#
# A square is a type of rectangle.
#
# A rhombus is a type of trapezoid.
#
# Use TDD to confirm that all of your classes are working correctly.
# Here’s an example test:
#
# def test
#   squa = Square.new
#   puts squa.is_a? Rectangle
#   puts squa.is_a? Quadrilateral
#
#   rect = Rectangle.new
#   puts rect.is_a? Quadrilateral
#   puts not(rect.is_a? Trapezoid)
# end
#
# test

class Quadrilateral
  def initialize()
  end
end

class Rectangle < Quadrilateral
  def initialize(side_1, side_2)
    @side_1 = side_1
    @side_2 = side_2
  end

  def perimeter
    (@side_1 * 2) + (@side_2 * 2)
  end
end

class Square < Rectangle
  def initialize(side)
    @side = side
  end

  def perimeter
    @side * 4
  end
end

class Trapezoid < Quadrilateral
  def initialize(side_1, side_2, side_3, side_4)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @side_4 = side_4
  end

  def perimeter
    @side_1 + @side_2 + @side_3 + @side_4
  end
end

class Rhombus < Trapezoid
  def initialize(side)
    @side = side
  end

  def perimeter
    @side * 4
  end
end

def test
  rectangle = Rectangle.new 4,3
  p rectangle.is_a? Quadrilateral

  square = Square.new 4
  p square.is_a? Rectangle
  p square.is_a? Quadrilateral
  p not(square.is_a?(Rhombus))

  trapezoid = Trapezoid.new 1,2,3,4
  p trapezoid.is_a? Quadrilateral
  p not(trapezoid.is_a?(Rectangle))

  rhombus = Rhombus.new 3
  p rhombus.is_a? Trapezoid
end

test

# We are going to continue working in the world.rb file. Now let’s
# create a new class Wyncoder that inherits from Person. To show you
# how inheritance works, go ahead and create a new Wyncoder and set
# it equal to a variable walter. Now, call walter.sing to make Walter
# sing. Notice how an instance of Wyncoder has access to the methods
# of the “Parent” class it inherits from (in this case Person). Now
# let’s give the Wyncoders special behaviors. Define a code method
# within the Wyncoder class that puts out to the terminal the string:
# “I am coding!”. Test out this new method by calling walter.code.
# What do you expect to happen if you call sandy.code? Give it a try.
# Submit all of the code in the world.rb file, including the code
# you used to check how the methods works.

class Person
  attr_accessor :hair_color
  attr_accessor :lyrics
  attr_accessor :name

  def initialize(hair_color, name)
    @hair_color = hair_color
    @lyrics = lyrics
    @name = name
  end

  def sing (lyrics)
    puts lyrics
  end
end

class Wyncoder < Person
  attr_accessor :code

  def code
    puts "I am coding!"
  end
end

puts sandy = Person.new("red", "sandy")
puts sandy.sing("wtf is going on")

puts wanda = Person.new("blue","wanda")
puts wanda.hair_color
puts wanda.name

puts walter = Wyncoder.new("white", "walter")
puts walter.sing("walter loves wyncode")
puts walter.code

# In previous exercises we made instance variables that we can use
# to store the attriubutes of an instance(member of that class), but
# what if we want to store all instances(members) of that class in
# an array or hash? Create a class variable named @@everyoneand set
# it equal to an empty array. In this array we are going to store all
# the instances of Person, try to do this by creating a save method.
# The save method should also print @@everyone out to the console,
# so we can see all the people that are in our storage.

class Person
  attr_accessor :name, :hair_color

  @@everyone = []

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def sing
    puts " #{@name} is singing "
  end

  def save
    @@everyone << self
    print @@everyone
  end

end

p sandy = Person.new("sandy", "red")
p sandy.save

p kevin = Person.new("kevin", "brown")
p kevin.save

p serena = Person.new("serena", "brown")
p serena.save

# As of now we know how to give behavior to instances of a class,
# but what if we want to give a bevahior to the class itself. In this
# exercise define a class method called riot. When riot is called on
# the Person class you should puts to the console a string: “The
# people are rising up!”.

class Person
  attr_accessor :name, :hair_color

  @@everyone = []

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def sing
    puts " #{@name} is singing "
  end

  def save
    @@everyone << [@name, @hair_color]
    print @@everyone
  end

  def self.riot
    puts "The people are rising up!"
  end
end

Person.riot

# Now that you have everyone stored in a class variable, and you
# gave the Person class the ability(method) to riot, let’s adjust
# the riot method to print out all the names of the people who are
# rioting. So when I call Person.riot my output should be the following

# The people are rising up!
# Sandy is rioting!
# Joe is rioting!
# Tim is rioting!

class Person
  attr_accessor :name, :hair_color

  @@everyone = []

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
    @@everyone << name
  end

  def sing
    puts " #{@name} is singing "
  end

  def save
    @@everyone << @name
    print @@everyone
  end

  def self.riot
    puts "The people are rising up!"
    @@everyone.each do |person|
      puts "#{person} is rising up!"
    end
  end
end

deven = Person.new("deven", "red")

kevin = Person.new("kevin", "brown")

serena = Person.new("serena", "brown")

Person.riot
