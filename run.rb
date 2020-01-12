require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
one = Zoo.new("Nathans Zoo", "Seattle")
two = Zoo.new("Hannahs Zoo", "New York")
six = Zoo.new("macklins zoo", "Seattle")
three = Animal.new("dog", 20, "wow", "Nathans Zoo")
four = Animal.new("dog", 30, "no way", "Nathans Zoo")
five = Animal.new("cat", 40, "jose", "Nathans Zoo")

check = one.animals 
check1 = one.animal_nicknames
check2 = one.animal_species 
check3 = Zoo.find_by_location("Seattle")
check4 = Animal.all
check5 = three.zoo
check6 = Animal.find_by_species("dog")
binding.pry
puts "done"
