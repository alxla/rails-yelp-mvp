# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "0127065108",
    category:     "french"
  },
  {
    name:         "El ristorante",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "0127065108",
    category:     "italian"
  },
  {
    name:         "Le dragon d'or",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "0127065108",
    category:     "chinese"
  },
  {
    name:         "Chez Marc",
    address:      "66 avenue de la frite 75017 Paris",
    phone_number: "0127065108",
    category:     "belgian"
  },
  {
    name:         "Sushi Tuti",
    address:      "48 rue du rouleau 75002 Paris",
    phone_number: "0127065108",
    category:     "japanese"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

Restaurant.all.each do |restaurant|
  (5..10).to_a.sample.times do
    my_rating = (0..5).to_a.sample
    restaurant.reviews << Review.create(content: Faker::Hacker.say_something_smart, rating: my_rating)
  end
end






