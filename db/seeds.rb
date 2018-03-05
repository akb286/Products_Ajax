# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

namespace :pop do
  desc "Populate Products"
  task products: :environment do
    10.times do
      product = Product.create(name: Faker::Coffee.blend_name, description: Faker::Coffee.notes, price: Faker::Number.decimal(2))
    end
  end
end
