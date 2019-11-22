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

#Céline Seeds
chris_celineTitanic = Celineversion.create!(name: "Céline Titanic", description: "Always looking to find the heart that went on before killing DiCaprio with cold blood. She is always screems at night after her lost heart. The heart will always go on, Amen!", price: 1200, image: "https://www.berussamusicart.com/wp-content/themes/_stylebook/timthumb.php?src=https%3A%2F%2Fwww.berussamusicart.com%2Fwp-content%2Fuploads%2F2015%2F05%2FCéline-Dion-–-Titanic.jpg&q=90&w=795&zc=1", user: chris)
vi_celineOnCrack = Celineversion.create!(name: "Céline On Crack", description: "My Nose Is Bleeding Like a Horse on Crack, My life is going down, down, down, and I just can't believe that my love was like baby,baby, baby, oooo. Wait, that was Bieber", price: 3200, image: "https://s.yimg.com/ny/api/res/1.2/I5.Fjg6W789MQT_SApBspQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyNDI7aD02NjguODMwODA4ODk0NjE4MQ--/https://s.yimg.com/uu/api/res/1.2/v2QI2rJPU6SpQNNDEDutow--~B/aD0xNjcxO3c9MzEwMztzbT0xO2FwcGlkPXl0YWNoeW9u/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2019-06/6e4d4ed0-8c85-11e9-9ffd-3d9a6ee121cf", user: vi)
quan_celineHaunted = Celineversion.create!(name: "Céline on Demon Speed looking for a road to ride on. That is after she gave her soul to the DEVIL.", description: "The Demon is in meeee", price: 9000, image: "https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2019/04/931/524/Céline-Dion-2-AP.jpg?ve=1&tl=1", user: quan)
chris_celineChristmas = Celineversion.create!(name: "Céline Santa/Santaline", description: "I am crazy expansive because it is Christmas you know... Business is business,and gifts are gifts, so let me be your gift this year ;).", price: 30000, image: "https://i.ytimg.com/vi/xoZ827FV4R8/hqdefault.jpg", user: chris)
quan_celineKidJuggling = Celineversion.create!(name: "Céline Juggling With Kids", description: "I love kids so much that it is a pleasure if I can juggle with a few of them. If you need a babysitter, consider me and I will juggle the life out of your kid.", price: 9030, image: "https://thesmokingnun.files.wordpress.com/2011/10/omg_scary-much.jpg", user: quan)
vi_celineCourage = Celineversion.create!(name: "Céline Courage", description: "Courage, use Brave and keep calm. Fake it till you make it. Be the leader you always wanted to be. If you can't do it, who can...I was telling myself", price: 8500, image: "https://www.berlin.de/converjon/?url=https%3A%2F%2Fpopula-middleware.s3.amazonaws.com%2Fbde-cms%2Fbo.tb.event%2Fimages%2F114%2Fcf087ddf-6592-4149-9b72-bcec1f9f8245.jpg&format=jpg&interlace=plane&quality=70&strip_metadata&width=624&height=468&crop=aoi_auto", user: vi)
vi_celineDesert = Celineversion.create!(name: "Céline Sensual In The Desert", description: "Bringing warm weather with me. Be cool,but don't be cold. Let me heat you with my beauty and put you in bed with my voice.", price: 7000, image: "https://thenypost.files.wordpress.com/2019/11/Céline-dion-1a.jpg?quality=90&strip=all&w=1200", user: vi)

chris_celineFashionQueem = Celineversion.create!(name: "Céline Fashion Queen", description: "Her lovely cloathing style that will impress even those that do not live on this earth.", price: 19200, image: "https://vigilantcitizen.com/wp-content/uploads/2019/01/celine_dion_life_50522549_128589961514496_8907225989959209520_n-e1548966581364.jpg", user: chris)
vi_celineDijon = Celineversion.create!(name: "Céline Dijon", description: "You're like regular mustard, but I am actually spicy as the Dijon mustard. I even have my own brand, you will cry of joy when tasting me, young boy!", price: 8200, image: "https://s.yimg.com/ny/api/res/1.2/I5.Fjg6W789MQT_SApBspQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyNDI7aD02NjguODMwODA4ODk0NjE4MQ--/https://s.yimg.com/uu/api/res/1.2/v2QI2rJPU6SpQNNDEDutow--~B/aD0xNjcxO3c9MzEwMztzbT0xO2FwcGlkPXl0YWNoeW9u/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2019-06/6e4d4ed0-8c85-11e9-9ffd-3d9a6ee121cf", user: vi)
quan_celineScary = Celineversion.create!(name: "Céline The Queen Of White-Crows", description: "My beauty is not something to be joked with, but men are pigs, therefore I decided to orientate towards birds and I chose crows (inspired from Game of Thrones), but white crows.", price: 99000, image: "hhttps://static.standard.co.uk/s3fs-public/thumbnails/image/2019/05/06/20/celinedion-metgala-2019.jpg", user: quan)
chris_celineNFL = Celineversion.create!(name: "Céline NFL", description: "I am crazy and beef, let's fight looser. If you want your friend to think you have a bad-ass grilfriend, bring me in, rent me and let the game begin.", price: 3000, image: "http://m.quickmeme.com/img/07/07658fc628686ed83a42d5fbb7e987bf7be566f2df178696b09bc47c33e32388.jpg", user: chris)
vi_celineValentine = Celineversion.create!(name: "Céline Valentine's Day", description: "Rent my love until your death. I will always love you forever. I am perfect for Valentine's Day only.", price: 500, image: "https://ksassets.timeincuk.net/wp/uploads/sites/55/2016/07/2016_CELINE-DION_GettyImages-117652950_150116-1-920x610.jpg", user: vi)
vi_celineAnimal = Celineversion.create!(name: "Céline Animal Lover", description: "Animals are my passion, I love to hug them, touch them, play with them and take care of them when the owner is gone.", price: 7320, image: "https://i.dailymail.co.uk/i/pix/2016/10/27/22/39C76E8500000578-3880244-image-m-21_1477604113487.jpg", user: vi)

chris_celineQueen = Celineversion.create!(name: "Céline Being The Queen Of England", description: "Mate, are you looking for your queen? Well, I am here waiting to meet you in your flat. Just let me put on my jumper.", price: 1200, image: "https://img.buzzfeed.com/buzzfeed-static/static/2019-11/14/17/campaign_images/5a4608f5d9ec/i-cant-stop-watching-celine-dions-response-to-bei-2-1349-1573751962-0_dblbig.jpg", user: chris)
vi_celineDPool = Celineversion.create!(name: "Céline And Her New Boyfriend Deadpool", description: "Want to hear a joke? Well, my new boyfiend has tons in his agenda, so just hit us up! ", price: 3200, image: "https://www.dravenstales.ch/wp-content/uploads/2018/05/celine-dion-deadpool.jpg", user: vi)

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



