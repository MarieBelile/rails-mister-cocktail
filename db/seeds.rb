# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# COCKTAILS
puts "Cleaning database..."
Cocktail.destroy_all

puts "Creating cocktails..."
martini = { name: "Martini" }
pina_collada = { name: "Pina collada" }
negroni = { name: "Negroni" }
paloma = { name: "Paloma" }

[ martini, pina_collada, negroni, paloma ].each do |attributes|
  cocktail = Cocktail.create!(attributes)
  puts "Created #{cocktail.name}"
end
puts "Finished!"

# INGREDIENTS

puts "Cleaning database..."
Ingredient.destroy_all

puts "Creating ingredients..."

lemon = { name: "lemon" }
ice = { name: "ice" }
mint = { name: "mint leaves" }

[ lemon, ice, mint ].each do |attributes|
  ingredient = Ingredient.create!(attributes)
  puts "Created #{ingredient.name}"
end
puts "Finished!"


