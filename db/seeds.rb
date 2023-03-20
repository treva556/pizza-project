# Seed restaurants
Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")
Restaurant.create(name: "Di Fara Pizza", address: "1424 Avenue J, Brooklyn, NY 11230")

# Seed pizzas
Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
Pizza.create(name: "Mushroom", ingredients: "Dough, Tomato Sauce, Cheese, Mushroom")
Pizza.create(name: "Margherita", ingredients: "Dough, Tomato Sauce, Cheese, Basil")

# Seed restaurant pizzas
RestaurantPizza.create(price: 10, restaurant_id: 1, pizza_id: 1)
RestaurantPizza.create(price: 12, restaurant_id: 1, pizza_id: 2)
RestaurantPizza.create(price: 15, restaurant_id: 2, pizza_id: 3)
RestaurantPizza.create(price: 20, restaurant_id: 3, pizza_id: 4)
##done
puts "🍕 initializing seeding!"
puts "🍕 Done seeding!"


