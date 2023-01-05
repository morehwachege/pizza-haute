puts "😋 Start seeding...🌱"
puts "################################################################"

(1..15).collect do |i|
    Pizza.create( name: Faker::Food.dish, ingredients: (1..10).collect {|x| Faker::Food.ingredient}.join(", "))
end

(1..15).collect do |i|
    Restaurant.create( name: Faker::Restaurant.name, address: [Faker::Address.street_name, Faker::Address.city, Faker::Address.country].join(", ") )
end

(1..15).collect do |i|
    RestaurantPizza.create( pizza_id: rand(1..15), restaurant_id: rand(1..15), price: rand(1..30))
end

puts "Seeding complete✅"