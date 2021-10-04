puts "Seeding roasters..."
5.times do
    Roaster.create(name:Faker::Mountain.name, location:Faker::Address.city, image:Faker::LoremFlickr.unique.image)
end

puts "Seeding coffees..."
20.times do
    Coffee.create(name:Faker::Coffee.blend_name, roast: , image: , roaster: Roaster.all.sample)
end
puts "✅ Done seeding!"
