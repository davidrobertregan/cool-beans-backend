puts "Start seeding!"
puts "Seeding roasters..."
5.times do
    Roaster.create(name: Faker::Mountain.name, location: Faker::Fantasy::Tolkien.location, image: Faker::LoremFlickr.image)
end

puts "Seeding coffees..."
20.times do
    Coffee.create(name: Faker::Coffee.blend_name, roast: ["light", "medium", "dark"].sample, image: Faker::LoremFlickr.image, roaster: Roaster.all.sample)
end

puts "Seeding drinkers..."
12.times do
    Drinker.create(name: Faker::Fantasy::Tolkien.character, image: Faker::Avatar.image)
end

puts "Seeding reviews..."
40.times do
    Review.create(content: Faker::Coffee.notes, rating: rand(1...5), coffee: Coffee.all.sample, drinker: Drinker.all.sample)
end

puts "✅ Done seeding!"
