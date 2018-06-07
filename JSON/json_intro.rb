require "json"

json = File.read("json_example.json")

p json
p json.class

# Changes it into a hash
json_parse = JSON.parse(json)

# Prints the whole hash
p json_parse
# Prints the data type
p json_parse.class
# Prints the colours hash
p json_parse["colors"]
# Prints the first colour in the hash of colours
p json_parse["colors"][0]["color"]
