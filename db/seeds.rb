# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#artists, name

  8.times do 
    Company.create(name: Faker::Company.unique.name, username: Faker::Alphanumeric.alpha(number: 6), password: Faker::Alphanumeric.alphanumeric(number: 6))
  end


# genres name

  8.times do
    Owner.create(name: Faker::Name.unique.name)
  end


# users name 

  8.times do 
    Franchise.create(company_id: Company.all.sample.id, owner_id: Owner.all.sample.id, location: Faker::Address.city, profit: Faker::Number.within(range: -1000.00..1000000.00))
  end