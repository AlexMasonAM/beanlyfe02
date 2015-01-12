# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
@roasts = ["gold","dark","light"]
def random_roast
  @roasts[rand(3)]
end
100.times do
  Bean.create(name: Faker::Name.last_name, roast: random_roast, origin: Faker::Address.country, year_roasted: 1990 +rand(25), quantity: (rand() * 100).round(2))
end
