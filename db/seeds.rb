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

file = URI.open("https://www.lara-clette.com/blog/wp-content/uploads/2021/07/Russell-Hobbs-Appareil-Raclette-1200W-8-Prs-100x100.jpg")
machine1 = Machine.create!(name: "Great machine to rent for 15p", description:"For cheese connoisseurs:Rent our Swiss Deluxe Raclette Master and experience the ultimate raclette journey. This high-end machine allows you to delicately melt your favorite cheeses, creating sophisticated flavor combinations. Perfect for cheese enthusiasts seeking an exceptional raclette experience.", capacity: 15, power: 600, brand: "Livoo", function: Machine::FUNCTION.sample, price: 19, user_id: user1.id)
machine1.photo.attach(io: file, filename: "raclette.jpg", content_type: "image/jpg")
machine1.save
file = File.open("app/assets/images/raclette_for_2.png")
machine2 = Machine.create!(name: "Raclette for 2 (lovers)", description: "For fans of tradition and conviviality:
Gather your friends and family around our Rustic Traditional Raclette Grill. Enjoy the warm and friendly atmosphere of a traditional raclette. This sturdy model allows you to melt cheese directly on individual trays, savoring delicious flavor combinations. Ideal for unforgettable raclette evenings.", capacity: 6, power: 800, brand: "Klarstein", function: Machine::FUNCTION.sample, price: 80, user_id: user2.id)
machine2.photo.attach(io: file, filename: "raclette_for_2.png", content_type: "image/png")
machine2.save
file = File.open("app/assets/images/raclette_for_8_round.png")
machine3 = Machine.create!(name: "Old School Savoyard Raclette", description: "Host intimate raclette parties with our Compact Raclette Party Set. This compact and convenient machine makes melting cheese a breeze. Its small size is perfect for limited spaces or casual get-togethers. Enjoy a cozy raclette experience on a smaller scale.", capacity: 8, power: 1000, brand: "Lagrange", function: Machine::FUNCTION.sample, price: 10, user_id: user3.id)
machine3.photo.attach(io: file, filename: "raclette_for_8_round.png", content_type: "image/png")
machine3.save
file = File.open("app/assets/images/raclette_for_4.png")
machine4 = Machine.create!(name: "Raclette and crepes!", description: "Experience the best of both worlds with our Gourmet Raclette Grill with Stone Top. This versatile Machine allows you to enjoy delicious grilling while melting cheese for a gourmet raclette experience. Unleash your culinary creativity by combining meats, vegetables, and melted cheese. An unforgettable grilled raclette experience.", capacity: 10, power: 1200, brand: "H.koening", function: Machine::FUNCTION.sample, price: 12, user_id: user4.id)
machine4.photo.attach(io: file, filename: "raclette_for_4.png", content_type: "image/png")
machine4.save
#machine5 = Machine.create!(name: "Super tefal to rent", description: "Simplify your life with our Modern Electric Raclette Melter. This sleek electric machine is designed for easy and quick use. Simply place the cheese in the melting container and let it melt in minutes. Perfect for raclette lovers looking for a practical and hassle-free solution.", capacity: 4, power: 600, brand: "Tefal", function: Machine::FUNCTION.sample, price: 16, user_id: user5.id)
#machine5.photo.attach(io: file, filename: "raclette.jpg", content_type: "image/jpg")
#machine5.save
#machine6 = Machine.create!(name: "Raclette machine for 6", description: "lorem ipsum", capacity: 6, power: 800, brand: "Tefal", function: Machine::FUNCTION.sample, price: 10, user_id: user6.id)
#machine6.photo.attach(io: file, filename: "raclette.jpg", content_type: "image/jpg")
#machine6.save
# machine7 = Machine.create!(name: "Old fashioned machine", description: "lorem ipsum", capacity: 8, power: 1000, brand: "Kitchen Chef ", function: Machine::FUNCTION.sample, price: 120, user_id: user7.id)
# machine8 = Machine.create!(name: "Appareil à raclette", description: "lorem ipsum", capacity: 10, power: 1200, brand: "Nedis", function: Machine::FUNCTION.sample, price: 150, user_id: user8.id)
# machine9 = Machine.create!(name: "Appareil à raclette", description: "lorem ipsum", capacity: 6, power: 700, brand: "Tristar", function: Machine::FUNCTION.sample, price: 60, user_id: user9.id)
# machine10 = Machine.create!(name: "Appareil à raclette", description: "lorem ipsum", capacity: 8, power: 900, brand: "Proline", function: Machine::FUNCTION.sample, price: 90, user_id: user10.id)
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
