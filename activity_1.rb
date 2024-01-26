# 1
array_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array_number.each do |num|
    puts num
end

# 2
h = { a:1, b:2, c:3, d:4 }

h[:b]

h[:e] = 5 

# 3
contact_data = [ ["john@email.com", "123 Main St.", "555-123-4567"], ["avion@gmail.com", "404 Not Found Dr.", "123-234-3454"] ]

contacts = { "John Cruz" => {} , "Avion School" => {}}

contacts.each do |key, value| 
    index = contacts.keys.index(key)

    value[:email] = contact_data[index][0]
    value[:address] = contact_data[index][1]
    value[:phone_number] = contact_data[index][2]

end

# 4

print "How old are you?"
age = get.chomp.to_i

puts "In 10 years you will be:\n #{age + 10}"
puts "In 20 years you will be:\n #{age + 20}"
puts "In 30 years you will be:\n #{age + 30}"
puts "In 40 years you will be:\n #{age + 40}"


