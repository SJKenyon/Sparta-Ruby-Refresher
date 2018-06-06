# Class instantiation

example_hash_class = Hash.new

# p example_hash_class

default_value_hash = Hash.new("Default")

# p default_value_hash
# p default_value_hash["Default"]
# p default_value_hash.keys

first_hash_creation = Hash[a: 2, b: 3]

# p first_hash_creation
# p first_hash_creation.keys
# p first_hash_creation[:b] + first_hash_creation[:a]

second_hash_creation = Hash["a" => 2, "b" => 3]

# p second_hash_creation
# p second_hash_creation.keys
# p second_hash_creation["a"] + second_hash_creation["b"]

zoo = {"dog" => "k9", "cat" => "feline"}

# p zoo
# p zoo.class
# p zoo["cat"]

zoo_update = {:dog => "k9", :cat => "feline"}

# p zoo_update
# p zoo_update[:dog]
#
# puts zoo
# puts zoo_update

zoo_ideal = {dog: "k9", cat: "feline"}

# puts zoo_ideal

ideal_zoo = {
  animals: {
    canines: 12,
    felines: 12,
    invertebrates: 6,
    insects: 350
  }
}

p ideal_zoo[:animals]
puts ideal_zoo[:animals]
puts ideal_zoo[:animals].keys
puts ideal_zoo[:animals][:insects]
