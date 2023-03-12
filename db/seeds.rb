# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Cocktail.destroy_all

puts "Creating cocktails"
10.times do
  cocktail = Cocktail.create(
    name: "Whiskey Sour",
    status: "Not Tried",
    method: "Shake",
    base: "Bourbon",
    ingredients: "egg white, bourbon, lemon juice, sugar syrup",
    how_to_make: "Add the egg white, bourbon, lemon juice and sugar syrup to a cocktail shaker with ice. Shake well for 10-15 seconds or until the outside of the shaker becomes frosted. Garnish with an orange peel and a cherry and serve."
  )
  cocktail.save!
  puts "Finished!"
end
