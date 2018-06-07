users = {
  dave: {
    age: 24,
    sex: "m"
  },
  jessica: {
    age: 31,
    sex: "f"
  },
  jeff: {
    age: 29,
    sex: "m"
  }
}

# Prints keys of users
users.each_key {|key| puts key}

# Prints keys and values of users names
users.each_key {|key| puts users[key]}

# Prints the keys and the value of each name
users.each do |key, value|
  p key,value
end

# Prints all arguments
users.each do |*args|
  p args
end

# Prints the keys and values of each name
# This way targets specific values in the nested hashes
users.each do |key, value|
  value.each do|k, v|
    p "The #{k} value is #{v}"
  end
end
