puts "Ready to have pizzas"

5.times do
    Restaurant.create(
        name:Faker::Restaurant.name,
        address:Faker::Address.street_address
    )
end
Pizza.create(
  name: "Pepperoni Pizza",
  ingredients: "mozzarella, pepperoni, tomato sauce, basil"
)

Pizza.create(
  name: "Vegetable Pizza",
  ingredients: "mozzarella, bell peppers, onions, mushrooms"
)

Pizza.create(
  name: "Margherita Pizza",
  ingredients: "mozzarella, tomatoes, basil, olive oil"
)

Pizza.create(
  name: "BBQ Chicken Pizza",
  ingredients: "mozzarella, BBQ chicken, red onions, cilantro"
)

Pizza.create(
  name: "Hawaiian Pizza",
  ingredients: "mozzarella, ham, pineapple, tomato sauce"
)

20.times do
    RestaurantPizza.create(
        price: rand(1..30),
        pizza_id:Pizza.all[rand(Pizza.count)].id,
        restaurant_id: Restaurant.all[rand(Restaurant.count)].id
    )
end

puts "Come get your Pizza!"