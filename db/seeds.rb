require 'open-uri'
puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating fruits...'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#   fruit = Ingredient.new(
#     name: Faker::Food.fruits
#   )
#   fruit.save
# end

ingredients_list = open(url).read
ingredients = JSON.parse(ingredients_list)
ingredients["drinks"].each do |ingredient|
  new_ingredient = Ingredient.new(
    name: ingredient["strIngredient1"]
  )
  new_ingredient.save
end
