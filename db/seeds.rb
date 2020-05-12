puts "Destroying all pets..."
Pet.destroy_all

puts "Creating 30 pets..."
30.times do
  Pet.create!(
    name: Faker::Movies::Ghostbusters.character,
    address: Faker::Address.street_address,
    found_on: Date.today - rand(1..10),
    species: Pet::SPECIES.sample
  )
end

puts "Finished creating #{Pet.count} pets..."
