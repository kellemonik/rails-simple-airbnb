# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

garden_flat = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory.', price_per_night: 75, number_of_guests: 4 }
dayse_lane = { name: 'Dayse Lane Parsons Green', address: '10 Clifton Gardens London', description: 'The house was lovingly built with stone floors, high-beamed ceilings, and antique details for a luxurious yet charming feel. Enjoy the sea and mountain views from the pool and lush garden.', price_per_night: 50, number_of_guests: 1 }
casa_alameda = { name: 'Casa Praça da Alameda', address: '10 Clifton Gardens Lisboa', description: 'Take an early morning stroll and enjoy the city without the tourists. Wander around the historic streets while the city sleeps, then head back for a morning coffee.', price_per_night: 100, number_of_guests: 2 }
casamar = { name: 'Casamar Ilhabela', address: '10 Clifton Gardens Brasil', description: 'Pretend you are lost in a magical forest as you perch on a log or curl up in the swinging chair. Soak in the tub, then fall asleep in a heavenly bedroom with cloud-painted walls and twinkling lights. And when you wake up, the espresso machine awaits.', price_per_night: 775, number_of_guests: 2 }

[garden_flat, dayse_lane, casa_alameda, casamar].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
