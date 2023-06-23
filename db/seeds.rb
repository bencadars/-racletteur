require "open-uri"
puts "cleaning the database..."
Machine.destroy_all
User.destroy_all
Booking.destroy_all

puts "loading All Users..."
user1 = User.create(first_name: "John", last_name: "Doe", phone_number: "1234567890", address: "123 Main Street", email: "john.doe@example.com", password: "password")
user2 = User.create(first_name: "Jane", last_name: "Smith", phone_number: "9876543210", address: "456 Elm Street", email: "jane.smith@example.com", password: "password")
user3 = User.create(first_name: "Michael", last_name: "Johnson", phone_number: "5551234567", address: "789 Oak Street", email: "michael.johnson@example.com", password: "password")
user4 = User.create(first_name: "Emily", last_name: "Williams", phone_number: "7778889999", address: "321 Maple Avenue", email: "emily.williams@example.com", password: "password")
user5 = User.create(first_name: "David", last_name: "Brown", phone_number: "4445556666", address: "987 Pine Lane", email: "david.brown@example.com", password: "password")
user6 = User.create(first_name: "Sarah", last_name: "Davis", phone_number: "2223334444", address: "654 Cedar Court", email: "sarah.davis@example.com", password: "password")
user7 = User.create(first_name: "Matthew", last_name: "Miller", phone_number: "8889990000", address: "852 Birch Road", email: "matthew.miller@example.com", password: "password")
user8 = User.create(first_name: "Olivia", last_name: "Anderson", phone_number: "1112223333", address: "753 Spruce Street", email: "olivia.anderson@example.com", password: "password")
user9 = User.create(first_name: "Christopher", last_name: "Taylor", phone_number: "6667778888", address: "369 Willow Drive", email: "christopher.taylor@example.com", password: "password")
user10 = User.create(first_name: "Ava", last_name: "Moore", phone_number: "4447771111", address: "456 Oak Lane", email: "ava.moore@example.com", password: "password")


puts "loading ALL Machines"

file = File.open("app/assets/images/raclette_plancha_16.png")
machine1 = Machine.create!(name: "Great machine to rent for 16p", description:"For cheese connoisseurs:Rent our Swiss Deluxe Raclette Master and experience the ultimate raclette journey. This high-end machine allows you to delicately melt your favorite cheeses, creating sophisticated flavor combinations. Perfect for cheese enthusiasts seeking an exceptional raclette experience.", capacity: 15, power: 600, brand: "Livoo", function: Machine::FUNCTION.sample, price: 39, user_id: user1.id)
machine1.photo.attach(io: file, filename: "raclette_plancha_16.png", content_type: "image/jpg")
machine1.save
file = File.open("app/assets/images/raclette_for_2.png")
machine2 = Machine.create!(name: "Raclette for 2 (lovers)", description: "For fans of tradition and conviviality:
Gather your friends and family around our Rustic Traditional Raclette Grill. Enjoy the warm and friendly atmosphere of a traditional raclette. This sturdy model allows you to melt cheese directly on individual trays, savoring delicious flavor combinations. Ideal for unforgettable raclette evenings.", capacity: 6, power: 800, brand: "Klarstein", function: Machine::FUNCTION.sample, price: 10, user_id: user2.id)
machine2.photo.attach(io: file, filename: "raclette_for_2.png", content_type: "image/png")
machine2.save
file = File.open("app/assets/images/raclette_savoie.png")
machine3 = Machine.create!(name: "Old School Savoyard Raclette", description: "Host intimate raclette parties with our Compact Raclette Party Set. This compact and convenient machine makes melting cheese a breeze. Its small size is perfect for limited spaces or casual get-togethers. Enjoy a cozy raclette experience on a smaller scale.", capacity: 8, power: 1000, brand: "Lagrange", function: Machine::FUNCTION.sample, price: 27, user_id: user3.id)
machine3.photo.attach(io: file, filename: "raclette_savoie.png", content_type: "image/png")
machine3.save
file = File.open("app/assets/images/raclette_crepe_8_tefal.png")
machine4 = Machine.create!(name: "Raclette and crepes!", description: "Experience the best of both worlds with our Gourmet Raclette Grill with Stone Top. This versatile Machine allows you to enjoy delicious grilling while melting cheese for a gourmet raclette experience. Unleash your culinary creativity by combining meats, vegetables, and melted cheese. An unforgettable grilled raclette experience.", capacity: 10, power: 1200, brand: "H.koening", function: Machine::FUNCTION.sample, price: 12, user_id: user4.id)
machine4.photo.attach(io: file, filename: "raclette_crepe_8_tefal.png", content_type: "image/png")
machine4.save
file = File.open("app/assets/images/raclette_for_8_round.png")
machine5 = Machine.create!(name: "Super tefal to rent", description: "Simplify your life with our Modern Electric Raclette Melter. This sleek electric machine is designed for easy and quick use. Simply place the cheese in the melting container and let it melt in minutes. Perfect for raclette lovers looking for a practical and hassle-free solution.", capacity: 4, power: 600, brand: "Tefal", function: Machine::FUNCTION.sample, price: 16, user_id: user5.id)
machine5.photo.attach(io: file, filename: "raclette_for_8_round.png", content_type: "image/png")
machine5.save
file = File.open("app/assets/images/raclette_6.png")
machine6 = Machine.create!(name: "Raclette machine for 6", description: "Raclette with easy-to-clean TEFAL® non-stick coating, delivered with 6 pans for pleasant evenings with friends. This raclette is very practical because you can use it as a grill if you wish. The Raclette is also very easy to use thanks to its On/Off switch.", capacity: 6, power: 800, brand: "Tefal", function: Machine::FUNCTION.sample, price: 10, user_id: user6.id)
machine6.photo.attach(io: file, filename: "raclette_6.png", content_type: "image/png")
machine6.save
file = File.open("app/assets/images/cheesenco.png")
machine7 = Machine.create!(name: "Cheese'n'co", description: "Raclette, tartiflettes, fondue, pancakes... all our cheese recipes in a single device. 6 good reasons to share! 6-in-1 device for delicious meals: raclette, cheese potatoes, fondue, tartiflette, hot box and cheese pancakes. Shared meals for up to 6 people; ideal appliance for delicious cheese meals with family and friends. Recipe book included to easily prepare any recipe. A compact, all-in-one format with dedicated accessories: 6 pans, 6 fondue forks, 1 fondue pot, 1 plate, 1 glass lid", capacity: 6, power: 1000, brand: "Tefal", function: Machine::FUNCTION.sample, price: 49, user_id: user7.id)
machine7.photo.attach(io: file, filename: "cheesenco.png", content_type: "image/png")
machine7.save
file = File.open("app/assets/images/plugshare.png")
machine8 = Machine.create!(name: "PLUG & SHARE Raclette", description: "For a raclette party, whether you are 2 or 10! Smart! these raclettes are modules for 2 people, which can be connected to each other up to 5 modules. Go easily from a romantic dinner (2 people), to an XXL raclette-party with friends (4, 6, 8 or 10 people). This 2-in-1 raclette, with a grill plate, offers the possibility of keeping your potatoes warm and cooking your various vegetables, meats, bacon or seafood. A compact format for minimum space on your table and in your cupboards.", capacity: 4, power: 1200, brand: "Tefal", function: Machine::FUNCTION.sample, price: 22, user_id: user8.id)
machine8.photo.attach(io: file, filename: "plugshare.png", content_type: "image/png")
machine8.save
file = File.open("app/assets/images/racpier3.png")
machine9 = Machine.create!(name: " Raclette RACPIER3", description: "Make a delicious raclette, pancakes, mini pancakes or grills with this 4-in-1 device! 3 plates are supplied with the device: one for making 6 mini pancakes, one for making a large pancake with a grill area, and a grilling stone for grilling. Thanks to the adjustable thermostat, you adapt the heating temperature according to the preparation", capacity: 8, power: 1100, brand: "Proline", function: Machine::FUNCTION.sample, price: 19, user_id: user9.id)
machine9.photo.attach(io: file, filename: "racpier3.png", content_type: "image/png")
machine9.save
file = File.open("app/assets/images/lagrange.png")
machine10 = Machine.create!(name: "Lagrange 8 Transparency", description: "Clever, the 3 ultra-resistant tempered glass trays allow everyone to follow the cooking of the cheese perfectly and to remove the pan as soon as the cheese is to your liking. The top tray is used to place a dish, the middle tray to place the cups to cook your raclette, and the bottom tray to put the cups to keep warm if you want to take a break or put them away. The white ceramic coating of the pans emits less CO2 and does not contain any toxic agent.", capacity: 8, power: 1000, brand: "Lagrabge", function: Machine::FUNCTION.sample, price: 27, user_id: user10.id)
machine10.photo.attach(io: file, filename: "lagrange.png", content_type: "image/png")
machine10.save
# machine11 = Machine.create!(name: "Appareil à raclette", description: "lorem ipsum", capacity: 10, power: 1100, brand: "Tefal", function: Machine::FUNCTION.sample, price: 130, user_id: user1.id)
# machine12 = Machine.create!(name: "Appareil à raclette", description: "lorem ipsum", capacity: 4, power: 550, brand: "Princess", function: Machine::FUNCTION.sample, price: 45, user_id: user3.id)
# machine13 = Machine.create!(name: "Appareil à raclette", description: "lorem ipsum", capacity: 6, power: 750, brand: "Kenwood", function: Machine::FUNCTION.sample, price: 70, user_id: user4.id)
# machine14 = Machine.create!(name: "Appareil à raclette", description: "lorem ipsum", capacity: 8, power: 950, brand: "Tefal", function: Machine::FUNCTION.sample, price: 100, user_id: user7.id)


puts "loading bookings..."
Booking.create([
  { start_date: Date.today, end_date: Date.today + 7, status: "Pending", user_id: user3.id, machine_id: machine1.id },
  { start_date: Date.today, end_date: Date.today + 7, status: "Pending", user_id: user3.id, machine_id: machine1.id },
  { start_date: Date.today, end_date: Date.today + 7, status: "Pending", user_id: user3.id, machine_id: machine1.id },
  { start_date: Date.today, end_date: Date.today + 7, status: "Pending", user_id: user3.id, machine_id: machine1.id },
  { start_date: Date.today, end_date: Date.today + 7, status: "Pending", user_id: user3.id, machine_id: machine1.id },
  { start_date: Date.today, end_date: Date.today + 7, status: "Pending", user_id: user3.id, machine_id: machine1.id },
  { start_date: Date.today + 1, end_date: Date.today + 5, status: "Pending", user_id: user6.id, machine_id: machine1.id },
  { start_date: Date.today, end_date: Date.today + 7, status: "Pending", user_id: user1.id, machine_id: machine4.id },
 # { start_date: Date.today, end_date: Date.today + 10, status: "Pending", user_id: user1.id, machine_id: machine5.id },
  { start_date: Date.today, end_date: Date.today + 15, status: "Pending", user_id: user1.id, machine_id: machine2.id }
]
)

puts "Finished"
