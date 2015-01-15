

10.times do
firetruck = Firetruck.create(engine_house: "#{Faker::Address.city} #{rand(1..20)}")
rand(3..10).times do

    firetruck.firemen.push(Fireman.create(name: Faker::Name.first_name))
  end
end


type_of_school = ["High","H.S","Elementary"]

20.times do
  name = Faker::Name.last_name

  Bus.create(school: "#{name} #{type_of_school.sample}", driver_attributes: { name: "#{Faker::Name.last_name}, #{Faker::Name.first_name}" })
end
