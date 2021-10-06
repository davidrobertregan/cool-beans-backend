puts "Destroying data..."

Coffee.destroy_all
Roaster.destroy_all
Drinker.destroy_all
Review.destroy_all

puts "Start seeding!"
puts "Seeding roasters..."

madcap = Roaster.create(name: "Madcap Coffee", location: "Grand Rapids, MI", url: "https://madcapcoffee.com/", image: "https://madcapcoffee.com/wp-content/uploads/2017/09/MadcapShare-Web-logo.png")
stumptown = Roaster.create(name: "Stumptown Coffee Roasters", location: "Portland, OR", url: 'https://www.stumptowncoffee.com/', image: "https://images.squarespace-cdn.com/content/v1/5055e59ce4b02b42cb30023c/1444311166322-0O8B8EXEF8I9CGH5873W/image-asset.png")
counter = Roaster.create(name: "Counter Culture", location: "Durham, NC", url: "https://counterculturecoffee.com/", image: "https://www.rainforest-alliance.org/wp-content/uploads/2021/07/counter-culture.png")


puts "Seeding coffees..."

# counter culture
Coffee.create(name: "Fast Forward", roast: "medium", image: "https://counterculturecoffee.com/wp-content/uploads/2020/08/Fast_Forward_12oz_bag_2020-e1621007893812-600x600.png", roaster: counter)
Coffee.create(name: "Gradient", roast: "medium", image: "https://counterculturecoffee.com/wp-content/uploads/2020/06/YR_Gradient_12oz_bag_2020-e1621008602512-600x600.png", roaster: counter)
Coffee.create(name: "Slow Motion", roast: "medium", image: "https://counterculturecoffee.com/wp-content/uploads/2019/06/YR_Slow_Motion_2019_main-e1621008397296-600x600.png", roaster: counter)
Coffee.create(name: "Big Trouble", roast: "medium", image: "https://counterculturecoffee.com/wp-content/uploads/2019/06/YR_Big_Trouble_2019_main-e1621007433826-600x600.png", roaster: counter)
Coffee.create(name: "Apollo", roast: "medium", image: "https://counterculturecoffee.com/wp-content/uploads/2019/06/YR_Apollo_2019_main-e1621007333153-600x600.png", roaster: counter)

# madcap
Coffee.create(name: "Three One Three", roast: "Blend", image: "https://madcapcoffee.com/wp-content/uploads/2019/06/ThreeOneThree_Madcap_Coffee_12oz_Grid.png", roaster: madcap)
Coffee.create(name: "Party", roast: "Ethiopia", image: "https://madcapcoffee.com/wp-content/uploads/2018/08/Party_Madcap_Coffee_12oz_Grid.png", roaster: madcap)
Coffee.create(name: "El Panal", roast: "Guatemala", image: "https://madcapcoffee.com/wp-content/uploads/2021/08/PEVMORbg.png", roaster: madcap)
Coffee.create(name: "Cognition", roast: "Signature Blend", image: "https://madcapcoffee.com/wp-content/uploads/2021/06/LIAplspg.png", roaster: madcap)
Coffee.create(name: "Yenni Reinoso", roast: "Limited Reserve", image: "https://madcapcoffee.com/wp-content/uploads/2021/08/MCAP_YenniReinoso_5LB-1.png", roaster: madcap)

#stumptown

Coffee.create(name: "Hair Bender", roast: "Dark", image: "http://cdn.shopify.com/s/files/1/0495/9446/6472/products/STCShopifyHairbender_ProductImageTransparentPNG.png?v=1622754826", roaster: stumptown)
Coffee.create(name: "Holler Mountain", roast: "Medium", image: "http://cdn.shopify.com/s/files/1/0495/9446/6472/products/STCShopifyHollerMountain_ProductImageTransparentPNG.png?v=1622754924", roaster: stumptown)
Coffee.create(name: "Guatemala El Injerto Bourbon", roast: "Medium", image: "http://cdn.shopify.com/s/files/1/0495/9446/6472/products/STC-Shopify-Guatemala-El-Injerto_Product-Image-Transparent-PNG_EDIT.png?v=1622754807", roaster: stumptown)
Coffee.create(name: "Ethiopia Mordecofe", roast: "Light", image: "https://cdn.shopify.com/s/files/1/0495/9446/6472/products/STC-Shopify-PDP-PNG_mordecofe_large.png?v=1624904030", roaster: stumptown)
Coffee.create(name: "Costa Rica Montes De Oro", roast: "Light", image: "https://cdn.shopify.com/s/files/1/0495/9446/6472/products/STC-Shopify-Costa-Rica-Montes-De-Oro2021_Product-Image-Transparent-PNG_large.png?v=1630874843", roaster: stumptown)



puts "Seeding drinkers..."
12.times do
    Drinker.create(name: Faker::Movies::HarryPotter.character, image: Faker::Avatar.image)
end

puts "Seeding reviews..."
40.times do
    Review.create(content: Faker::Coffee.notes, rating: rand(1...5), coffee: Coffee.all.sample, drinker: Drinker.all.sample)
end

puts "✅ Done seeding!"
