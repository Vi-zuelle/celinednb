puts 'Cleaning Database'
Booking.destroy_all
Celineversion.destroy_all
User.destroy_all
puts 'Database Cleaned'

puts 'Creating seeds'

#User seeds
vi = User.create!(first_name: "Vi", last_name: "Pannetier", username: "vi", email: "vi@cdnb.com", password:"123456")
chris = User.create!(first_name: "Christian", last_name: "Doumit", username: "chris", email: "christian@cdnb.com", password:"123456")
quan = User.create!(first_name: "Quan", last_name: "Nguyen", username: "Quanito1337", email: "quan@cdnb.com", password:"123456")
costin = User.create!(first_name: "Costin", last_name: "Dumi", username: "Costin123", email: "costin@cdnb.com", password:"123456")
gi = User.create!(first_name: "gi", last_name: "Vannetier", username: "giii", email: "gi@cdnb.com", password:"123456")

#Celine Seeds
celineTitanic = Celineversion.create!(name: "Celine Titanic", description: "Always sinking her heart that went on", price: 1200, image: "https://www.berussamusicart.com/wp-content/themes/_stylebook/timthumb.php?src=https%3A%2F%2Fwww.berussamusicart.com%2Fwp-content%2Fuploads%2F2015%2F05%2FCeline-Dion-–-Titanic.jpg&q=90&w=795&zc=1", user: vi)
celineOnCrack = Celineversion.create!(name: "Celine On Crack", description: "My Nose Is Bleeding Like a Horse on Crack, My life is going down", price: 3200, image: "https://s.yimg.com/ny/api/res/1.2/I5.Fjg6W789MQT_SApBspQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyNDI7aD02NjguODMwODA4ODk0NjE4MQ--/https://s.yimg.com/uu/api/res/1.2/v2QI2rJPU6SpQNNDEDutow--~B/aD0xNjcxO3c9MzEwMztzbT0xO2FwcGlkPXl0YWNoeW9u/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2019-06/6e4d4ed0-8c85-11e9-9ffd-3d9a6ee121cf", user: gi)
celineHaunted = Celineversion.create!(name: "Celine on Demon Speed ", description: "The Demon is in meeee", price: 9000, image: "https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2019/04/931/524/Celine-Dion-2-AP.jpg?ve=1&tl=1", user: quan)

#Booking Seeds
new_booking = Booking.create!(start_date: DateTime.now+1, end_date: DateTime.now+2, status: "Pending", user: chris, celineversion: celineTitanic, message: "Please, I want it my heart to go on")

puts 'Seeds completed'

gi = User.create!(first_name: "gi", last_name: "Vannetier", username: "giii", email: "gi@cdnb.com", password:"123456")
chris = User.create!(first_name: "Christian", last_name: "Tucker", username: "chris", email: "christian@cdnb.com", password:"123456")
celineOnCrack = Celineversion.create!(name: "Celine On Crack", description: "My Nose Is Bleeding Like a Horse on Crack, My life is going down", price: 1200, image: "https://s.yimg.com/ny/api/res/1.2/I5.Fjg6W789MQT_SApBspQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyNDI7aD02NjguODMwODA4ODk0NjE4MQ--/https://s.yimg.com/uu/api/res/1.2/v2QI2rJPU6SpQNNDEDutow--~B/aD0xNjcxO3c9MzEwMztzbT0xO2FwcGlkPXl0YWNoeW9u/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2019-06/6e4d4ed0-8c85-11e9-9ffd-3d9a6ee121cf", user: gi)

new_booking = Booking.create!(start_date: DateTime.now+1, end_date: DateTime.now+2, status: "Pending", user: gi, celineversion: celineOnCrack, message: "Please, give me crack")


