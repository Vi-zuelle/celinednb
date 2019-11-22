puts 'Cleaning Database'
Booking.destroy_all
Celineversion.destroy_all
User.destroy_all
puts 'Database Cleaned'

puts 'Creating seeds'

#User seeds
vi = User.create!(first_name: "Vi", last_name: "Pannetier", username: "vi", email: "vi@cdnb.com", password:"123456")
chris = User.create!(first_name: "Christian", last_name: "Doumit", username: "chris", email: "christian@cdnb.com", password:"123456", avatar:"https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/ekipyhjtwrtniwwln3xl.jpg")
quan = User.create!(first_name: "Quan", last_name: "Nguyen", username: "Quanito1337", email: "quan@cdnb.com", password:"123456")
costin = User.create!(first_name: "Costin", last_name: "Dumi", username: "Costin123", email: "costin@cdnb.com", password:"123456")
gi = User.create!(first_name: "gi", last_name: "Vannetier", username: "giii", email: "gi@cdnb.com", password:"123456")

#Celine Seeds
chris_celineTitanic = Celineversion.create!(name: "Celine Titanic", description: "Always sinking her heart that went on", price: 1200, image: "https://www.berussamusicart.com/wp-content/themes/_stylebook/timthumb.php?src=https%3A%2F%2Fwww.berussamusicart.com%2Fwp-content%2Fuploads%2F2015%2F05%2FCeline-Dion-–-Titanic.jpg&q=90&w=795&zc=1", user: chris)
vi_celineOnCrack = Celineversion.create!(name: "Celine On Crack", description: "My Nose Is Bleeding Like a Horse on Crack, My life is going down", price: 3200, image: "https://s.yimg.com/ny/api/res/1.2/I5.Fjg6W789MQT_SApBspQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyNDI7aD02NjguODMwODA4ODk0NjE4MQ--/https://s.yimg.com/uu/api/res/1.2/v2QI2rJPU6SpQNNDEDutow--~B/aD0xNjcxO3c9MzEwMztzbT0xO2FwcGlkPXl0YWNoeW9u/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2019-06/6e4d4ed0-8c85-11e9-9ffd-3d9a6ee121cf", user: vi)
quan_celineHaunted = Celineversion.create!(name: "Celine on Demon Speed", description: "The Demon is in meeee", price: 9000, image: "https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2019/04/931/524/Celine-Dion-2-AP.jpg?ve=1&tl=1", user: quan)
chris_celineChristmas = Celineversion.create!(name: "Santa Celine", description: "I am crazy expansive because it is Christmas you know... Business is business", price: 30000, image: "https://i.ytimg.com/vi/xoZ827FV4R8/hqdefault.jpg", user: chris)
vi_celineCourage = Celineversion.create!(name: "Celine courage", description: "Courage, use Brave and keep calm", price: 8500, image: "https://www.berlin.de/converjon/?url=https%3A%2F%2Fpopula-middleware.s3.amazonaws.com%2Fbde-cms%2Fbo.tb.event%2Fimages%2F114%2Fcf087ddf-6592-4149-9b72-bcec1f9f8245.jpg&format=jpg&interlace=plane&quality=70&strip_metadata&width=624&height=468&crop=aoi_auto", user: vi)
vi_celineDesert = Celineversion.create!(name: "Celine sensual in the desert", description: "Bringing warm weather with me. Be cool but don't be cold", price: 7000, image: "https://thenypost.files.wordpress.com/2019/11/celine-dion-1a.jpg?quality=90&strip=all&w=1200", user: vi)

#Booking Seeds
new_booking = Booking.create!(start_date: DateTime.now+1, end_date: DateTime.now+3, status: "Pending", user: chris, celineversion: vi_celineCourage, message: "Please, I want it my heart to go on")
new_booking2 = Booking.create!(start_date: DateTime.now+2, end_date: DateTime.now+4, status: "Pending", user: chris, celineversion: vi_celineDesert, message: "Please, I want it my heart to go on")
new_booking3 = Booking.create!(start_date: DateTime.now+3, end_date: DateTime.now+5, status: "Pending", user: chris, celineversion: vi_celineDesert, message: "Please, I want it my heart to go on")
new_booking4 = Booking.create!(start_date: DateTime.now+4, end_date: DateTime.now+6, status: "Pending", user: vi, celineversion: chris_celineChristmas, message: "Please, I want it my heart to go on")
new_booking5 = Booking.create!(start_date: DateTime.now+5, end_date: DateTime.now+7, status: "Pending", user: vi, celineversion: chris_celineChristmas, message: "Please, I want it my heart to go on")
new_booking6 = Booking.create!(start_date: DateTime.now+6, end_date: DateTime.now+8, status: "Pending", user: chris, celineversion: vi_celineDesert, message: "Please, I want it my heart to go on")
new_booking7 = Booking.create!(start_date: DateTime.now+7, end_date: DateTime.now+9, status: "Pending", user: chris, celineversion: vi_celineDesert, message: "Please, I want it my heart to go on")
new_booking8 = Booking.create!(start_date: DateTime.now+8, end_date: DateTime.now+10, status: "Pending", user: vi, celineversion: chris_celineTitanic, message: "Please, I want it my heart to go on")
new_booking9 = Booking.create!(start_date: DateTime.now+9, end_date: DateTime.now+11, status: "Pending", user: chris, celineversion: vi_celineCourage, message: "Please, I want it my heart to go on")
new_booking10 = Booking.create!(start_date: DateTime.now+10, end_date: DateTime.now+12, status: "Pending", user: chris, celineversion: vi_celineDesert, message: "Please, I want it my heart to go on")

puts 'Seeds completed'

gi = User.create!(first_name: "gi", last_name: "Vannetier", username: "giii", email: "gi@cdnb.com", password:"123456")
chris = User.create!(first_name: "Christian", last_name: "Tucker", username: "chris", email: "christian@cdnb.com", password:"123456")
celineOnCrack = Celineversion.create!(name: "Celine On Crack", description: "My Nose Is Bleeding Like a Horse on Crack, My life is going down", price: 1200, image: "https://s.yimg.com/ny/api/res/1.2/I5.Fjg6W789MQT_SApBspQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyNDI7aD02NjguODMwODA4ODk0NjE4MQ--/https://s.yimg.com/uu/api/res/1.2/v2QI2rJPU6SpQNNDEDutow--~B/aD0xNjcxO3c9MzEwMztzbT0xO2FwcGlkPXl0YWNoeW9u/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2019-06/6e4d4ed0-8c85-11e9-9ffd-3d9a6ee121cf", user: gi)

new_booking = Booking.create!(start_date: DateTime.now+1, end_date: DateTime.now+2, status: "Pending", user: gi, celineversion: celineOnCrack, message: "Please, give me crack")


