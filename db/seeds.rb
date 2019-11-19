puts 'Cleaning Database'
Booking.destroy_all
Celineversion.destroy_all
User.destroy_all
puts 'Database Cleaned'

puts 'Creating seeds'

vi = User.create!(first_name: "Vi", last_name: "Pannetier", username: "vi", email: "vi@cdnb.com", password:"123456")
chris = User.create!(first_name: "Christian", last_name: "Doumit", username: "chris", email: "christian@cdnb.com", password:"123456")
celineTitanic = Celineversion.create!(name: "Celine Titanic", description: "Always sinking her heart that went on", price: 1200, image: "https://www.berussamusicart.com/wp-content/themes/_stylebook/timthumb.php?src=https%3A%2F%2Fwww.berussamusicart.com%2Fwp-content%2Fuploads%2F2015%2F05%2FCeline-Dion-–-Titanic.jpg&q=90&w=795&zc=1", user: vi)

new_booking = Booking.create!(start_date: DateTime.now+1, end_date: DateTime.now+2, status: "Pending", user: chris, celineversion: celineTitanic, message: "Please, I want it my heart to go on")

puts 'Seeds completed'
