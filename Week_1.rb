# Assignments from Week 1, Basic Ruby
# April 4 - April 8, 2016

# Sometimes Ruby methods will work both with or without parameters in slightly
# different ways. Find the round method in the Ruby documentation. The
# documentation can be overwhelming at first, but it’s important to keep
# familiarizing yourself with it as it will be an essential resource for you
# down the road. How can we use this round method to transform 1.7218 into 2?

1.7218.round

# Building from the first part of this question, let’s use the round method
# again to make 1.7218 into 1.72.

1.7218.round(2)

# 34 / 5 returns 6, despite common knowledge telling us it should
# return 6.8. What is a way of returning the answer as a Float?

34.0/5

# One of the most useful features of Ruby is method chaining. This
# allows us to accomplish a lot with a small amount of code. Now that
# you are familiarized with the documentation, visit the ruby docs to
# find the methods that will transform the the string ”EDOCNYW” into
# ”Wyncode Academy”. Make sure to run your code in irb before submitting.

"EDOCNYW".reverse.capitalize << " Academy"

# One of the important things to learn about Ruby is that everything is
# an Object! There are different types of objects, but everything is an
# Object. Look up the Ruby is_a?, class, & respond_to? methods, and tell
# us what would be the result of the following method calls:
#
# 1.class
# "1".class
#
# 1.is_a?(Integer)
# 1.is_a?(String)
# "1".is_a?(String)
#
# 1.respond_to?('+')
# "1".respond_to?('+')
#
# 1.respond_to?('/')
# "1".respond_to?('/')

1.class
=> Fixnum

“1”.class
=> String

1.is_a?(Integer)
=> true

1.is_a?(String)
=> false

“1”.is_a?(String)
=> true

1.respond_to?(’+’)
=> true

“1”.respond_to?(’+’)
=> true

1.respond_to?(’/’)
=>true

“1”.respond_to?(’/’)
=> false

# I’m trying to give "Wayne" his proper rap name (Lil Wayne) using string
# methods found in the Ruby documentation. However I am getting an error when
# I try to run the following code. Give a brief explanation of why I am
# getting this error and how it can be resolved.
#
# " Wayne".prepend (Lil)

" Wayne".prepend("Lil")


# Return the value 2 from the array.
# [[1,2,3],[4,5,6]]

[[1,2,3],[4,5,6]] [0][1]
[[1,2,3],[4,5,6]].first[1]

# Return the largest number from the array.
# [[1,2,3],[4,5,6]]

[[1,2,3],[4,5,6]].flatten.max

# Prove that the smallest number from the second array is greater than
# the largest number in the first array.
# [[1,2,3],[4,5,6]]

[[1,2,3], [4,5,6]][0].min < [[1,2,3], [4,5,6]][1].max

# Turn this string…
#
# "The quick brown fox jumps over the lazy dog"
#
# …into this string…
#
# "abcdefghijklmnopqrstuvwxyz"

"The quick brown fox jumps over the lazy dog".delete(" ").downcase.split("").sort.uniq.join

# Do the following expressions evaluate to true or false?

# not(!true)
# !!true
# not(!false)
# !!false

true
true
false
false

# Distribute the value outside the parentheses to simplify the statement.
#
# -(1 - 1)
# not(true or false)
# -(-1+1)
# not(!true and false)

-1 + 1
false && true
1 - 1
true || true

# I’d like to implement the following logic.
#
# If I can - through great effort - reach all the way to the last item
# in an array, I want to return it.
# # Otherwise, if I fail, I want to return the first item in the array.
# # To show off in front of my teammates, I wrote this 1-line hack. But it
# doesn’t work for the simple test array [1, 2, nil].
#
# [3, 4, nil].last or [1, 2, nil].first
# Expected result
# nil, the last item in the array
#
# Actual result
# 1, the first item in the array
#
# In your own words, tell me what’s wrong with my hacky code.

### Nil evaluates as falsey (always), so Ruby skips over the first part of
### the expression and moves on to what is on the other side of the or statement.
### Ruby doesn’t care about stuff that’s falsey. It goes on to look for truthy
### things. Here, the statement evaluates to true because 1 is truthy; therefore,
### the result is 1.

# We tried to write a program that builds a pyramid, but we couldn’t get
# it to work! Your goal is to fix it for us. Here’s how we wanted it to work:
#
# If we run the program like this: ruby pyramid.rb 5
# It should print out a pyramid 5 rows tall, like this:
#
#  *
#  **
#  ***
#  ****
#  *****
# If we call the program like this: ruby pyramid.rb 23
# It should print out a pyramid 23 rows tall.

height = ARGV[0].to_i
output = ""
height.times do |i|
  output << "*" * i+=1
  output << "\n"
end
puts output

# Work with the same program as last time, except now we want it to
# make a real-deal double-sided pyramid!
#
#     **
#    ****
#   ******
#  ********
# **********
# If we call the program like this: ruby pyramid.rb 23
# It should print out a pyramid 23 rows tall.

height = ARGV[0].to_i
output = ""
height.times do |i|
  output << " " * (height - i + 1)
  output << "*" * (i +=1) * 2
  output << "\n"
end
puts output

# We’re holding auditions for our pitch day panel at Wyncode. Juha really
# wants the Cheetah Girls to be the panelists, but so many people
# have auditioned!
#
# CHEETAH_GIRLS = [
#   "Raven-Symone",
#   "Adrienne Bailon",
#   "Sabrina Bryan",
#   "Kiely Williams"
# ]
#
# auditions = [
#   "Raven-Symone",
#   "Usher",
#   "Wiz Khalifa",
#   "Adrienne Bailon",
#   "Hulk Hogan",
#   "Sabrina Bryan",
#   "Diego Lugo",
#   "Kiely Williams",
#   "Justin Timberlake"
# ]
#
# panel = []
#
# puts panel
#
# Write some code that will iterate over the auditions and add them
# to the panel if and only if they are in the CHEETAH_GIRLS constant.

CHEETAH_GIRLS = [
  "Raven-Symone",
  "Adrienne Bailon",
  "Sabrina Bryan",
  "Kiely Williams"
]
auditions = [
  "Raven-Symone",
  "Usher",
  "Wiz Khalifa",
  "Adrienne Bailon",
  "Hulk Hogan",
  "Sabrina Bryan",
  "Diego Lugo",
  "Kiely Williams",
  "Justin Timberlake"
]

panel = []

for candidate in auditions
  if CHEETAH_GIRLS.include? candidate
    panel << candidate
  end
end

puts panel

# Copy the code below into a new file, and let’s look it over:
#
# beatles = [
#   {
#     name: nil,
#     nickname: "The Smart One"
#   },
#   {
#     name: nil,
#     nickname: "The Shy One"
#   },
#   {
#     name: nil,
#     nickname: "The Cute One"
#     },
#   {
#     name: nil,
#     nickname: "The Quiet One"
#   }
# ]
#
# beatles.each do |member|
#   # Your Code Here
# end
#
# beatles.each do |member|
#   puts "Hi, I'm #{member[:name]}.  I'm #{member[:nickname]}!"
# end
#
# The first line is one way to represent the Beatles. This data structure
# is an Array of Hashes.
#
# Next, we see a loop iterating each of the elements in the beatles array.
# We want it to loop through all of them and match their names to their
# nicknames, using a case statement. Add your code inside to accomplish this.
#   If you don’t know their nicknames, Google it.
#
# Finally, the last bit of code loops through the array once again and prints
# the result on screen. Submit the entire contents of the file when you’re finished.

beatles = [
  {
    name: nil,
    nickname: "The Smart One"
  },
  {
    name: nil,
    nickname: "The Shy One"
  },
  {
    name: nil,
    nickname: "The Cute One"
    },
  {
    name: nil,
    nickname: "The Quiet One"
  }
]

beatles.each do |member|
case member[:nickname]
when "The Smart One"
  member[:name] = "John"
when "The Shy One"
  member[:name] = "Ringo"
when "The Cute One"
  member[:name] = "Paul"
else
  member[:name] = "George"
  end
end

beatles.each do |member|
  puts "Hi, I'm #{member[:name]}.  I'm #{member[:nickname]}!"
end

# Create a file named tip_calculator.rb. Enter the following code:
#
# puts "How much is the bill?"
# bill = gets
# puts "The bill is $#{bill}"
#
# This won’t work in SublimeText with Command+B. You must run this file from
# the Terminal using the word ruby followed by the filename.
#
# etoro@Eds-MacBook-Pro:~$ cd ~/Desktop/
# etoro@Eds-MacBook-Pro:~/Desktop$ ruby tip_calculator.rb
#
# The gets method is the opposite of the puts method. It gets input from
# the user rather than sending output to the user.
#
# Run this sample program. When prompted, enter a bill amount, press enter,
# and see what happens.
#
# Edit this program to gets the total bill from the user, calculate the total
# plus a 20% tip, and output that total to the screen. The last line of your
# program should be:
#
# puts "The total is $#{total}"

puts "How much is the bill?"
bill = gets.to_f

tip_percent = 0.20
tip = bill * tip_percent
total = bill + tip

puts "The bill is $#{'%.2f' %bill.to_s}"

puts "The total is $#{'%.2f' %total.to_s}"

# You have 100 cats in a row that are all wearing hats. You make 100
# passes by the cats. The first time through, you visit every cat and
# remove its hat if it’s on, and put it on if it’s off. The second time you
# only visit every 2nd cat (cat #2, #4, #6, …). The third time, every 3rd cat
# (cat #3, #6, #9, …), etc, until you only visit the 100th cat.
#
# Write code that displays which cats have hats and which cats do not at
# the end of the 100th iteration.
