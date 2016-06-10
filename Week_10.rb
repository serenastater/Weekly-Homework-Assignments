# Write a recursive method that returns the corresponding fibonacci number
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...
# F sub n = F sub (n-1) + F sub (n+1)

def fibonacci(n)
  return 0 if n == 1
  return 1 if n == 2
  return fibonacci(n-1)+fibonacci(n-2)
end

puts "The tenth fibonacci number is #{fibonacci(10)}"

# Write a recursive method that returns the factorial of any number

def factorial(factor)
  return 1 if factor == 1
  factor*factorial(factor-1)
end

puts factorial(4)

# Check to see if you can fly to pensacola from tampa

flights = {
  "maimi" => ["pensacola", "jacksonville"],
  "naples" => ["jacksonville"],
  "jacksonville" => ["tampa", "pensacola", "naples", "miami"],
  "tampa" => ["jacksonville"],
  "pensacola" => ["miami", "jacksonville"]
}

def can_fly_to(flights, from, to)
  return true if flights[from].include? to
  flights[from].any? do |connecting_city|
    return true if can_fly_to(flights, connecting_city, to)
  end
  false
end

puts can_fly_to(flights, "tampa", "pensacola")

# Model a tree graph with OOP

class Node
  attr_accessor :value, :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @right = right
    @left = left
  end
end

class Tree
  attr_accessor :root

  def initialize(root)
    @root = root
  end
end

big_oak = Tree.new(
  Node.new(
    100,
    Node.new(50),
    Node.new(150)
  )
)

# Create an algorithm to empty a stack (last in, first out)

stack = ["$100", "$1000", "$10000", "bling bling"]

stack.length.times do
  puts stack.pop
end

until stack.length == 0
  puts stack.pop
end

while stack.length > 0
  puts stack.pop
end

# Create an algorithm to empty a queue (first in, first out)

queue = ["auston", "david"]

while queue.length > 0
  puts queue.shift
end

# Create a breadth first search for the tree from adove

queue = [big_oak.root]

while queue.length > 0
  node = queue.shift
  puts node.value
  queue << node.left if node.left
  queue << node.right if node.right
end

# Given some amount of change, dispense the least amount of coins

denominations = [1, 5, 10, 25]

def max(array)
  maximum = array.first
  array.each do |item|
    if item > maximum && !(item > amount)
      maximum = item
    end
  end
  maximum
end

def calculate_change(amount, denominations)
  return 0 if amount > 99
  change_to_return = []
  while amount > 0
    biggest_coin = max(denominations)
    if amount >= biggest_coin
      change_to_return << biggest_coin
      amount -= biggest_coin
    end
  end
  change_to_return
end

p calculate_change(32, denominations)
