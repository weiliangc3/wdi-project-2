User.destroy_all
Wedding.destroy_all
Attendance.destroy_all
Wish.destroy_all

u1 = User.create!(email: "wei@wei.com",
              password: "password",
              first_name: "Wei",
              last_name: "Cheah")

u2 = User.create!(email: "john@john.com",
              password: "password",
              first_name: "John",
              last_name: "Segar")

u3 = User.create!(email: "cat@cat.com",
              password: "password",
              first_name: "Cat",
              last_name: "Lau")

u4 = User.create!(email: "paul@paul.com",
              password: "password",
              first_name: "Paul",
              last_name: "Smith")

u5 = User.create!(email: "bill@bill.com",
              password: "password",
              first_name: "Bill",
              last_name: "Billton")

u6 = User.create!(email: "jill@jill.com",
              password: "password",
              first_name: "Jill",
              last_name: "Jilly")

u7 = User.create!(email: "carl@carl.com",
              password: "password",
              first_name: "Carl",
              last_name: "Carlisle")


w1 = Wedding.create!( name: "WeiDing Inaugural Ball",
                  description: "Wei's getting married to his computer!")
w1.wedding_image = Rails.root.join("public/images/seeds/seedwedding1.jpeg").open
w1.save!

w2 = Wedding.create!( name: "Jack and Jill goes up the hill",
                  description: "Join us in this life changing event to get water!")
w2.wedding_image = Rails.root.join("public/images/seeds/seedwedding2.jpeg").open
w2.save!

w3 = Wedding.create!( name: "Carl's Wedding",
                  description: "Carl is planning a surprise wedding for his fiance and wants you to be part of it")
w3.wedding_image = Rails.root.join("public/images/seeds/seedwedding3.jpeg").open
w3.save!

w4 = Wedding.create!( name: "Bill and Bonnies Bash",
                  description: "Bill and Bonnie are getting married this June in a theatre near you")
w4.wedding_image = Rails.root.join("public/images/seeds/seedwedding4.jpeg").open
w4.save!

a1 = Attendance.create!(role: "couple",
                    status: "confirmed",
                    email: "wei@wei.com",
                    user_id: u1.id,
                    wedding_id: w1.id)

a2 = Attendance.create!(role: "admin",
                    status: "confirmed",
                    email: "wei@wei.com",
                    user_id: u1.id,
                    wedding_id: w2.id)

a3 = Attendance.create!(role: "guest",
                    status: "confirmed",
                    email: "wei@wei.com",
                    user_id: u1.id,
                    wedding_id: w3.id)

a4 = Attendance.create!(role: "guest",
                    status: "unconfirmed",
                    email: "wei@wei.com",
                    user_id: u1.id,
                    wedding_id: w4.id)

a5 = Attendance.create!(role: "couple",
                    status: "confirmed",
                    email: "cat@cat.com",
                    user_id: u3.id,
                    wedding_id: w1.id)

a6 = Attendance.create!(role: "guest",
                    status: "unconfirmed",
                    email: "john@john.com",
                    wedding_id: w1.id)

a7 = Attendance.create!(role: "couple",
                    status: "unconfirmed",
                    email: "jill@jill.com",
                    wedding_id: w2.id)

a8 = Attendance.create!(role: "couple",
                    status: "unconfirmed",
                    email: "carl@carl.com",
                    wedding_id: w3.id)

a9 = Attendance.create!(role: "couple",
                    status: "unconfirmed",
                    email: "bill@bill.com",
                    wedding_id: w4.id)

wi1 = Wish.create!( name: "Clock",
                details: "We're moving into a new place, and need a cool clock! Help us pick a real cool one! We hear the sounds, of a ticking of clocks...",
                wedding_id: w1.id)
wi1.image = Rails.root.join("public/images/seeds/clockgift.jpeg").open
wi1.save!

wi2 = Wish.create!( name: "Wine Glasses",
                details: "We've never had a set of wine glasses, and we're gonna be needing a few to host some dinners. Choose some for us to use! We're sure they'll be absolutely... smashing",
                wedding_id: w1.id)
wi2.image = Rails.root.join("public/images/seeds/glassgift.jpeg").open
wi2.save!

wi3 = Wish.create!( name: "Skillet",
                details: "Because we love food, we love cooking! And one thing we're missing is a skillet. Help us pick a skillet? We'll grillit!",
                wedding_id: w1.id)
wi3.image = Rails.root.join("public/images/seeds/skilletgift.jpeg").open
wi3.save!

wi4 = Wish.create!( name: "Guitar",
                details: "I really want a guitar. Fender acoustic please",
                wedding_id: w2.id)
wi4.image = Rails.root.join("public/images/seeds/guitargift.jpeg").open
wi4.save!

wi5 = Wish.create!( name: "Chair",
                details: "I really want a chair. Comfy please",
                wedding_id: w1.id,
                user_id: u1)

wi6 = Wish.create!( name: "Meme",
                details: "I really want a meme. Gooby please",
                wedding_id: w1.id,
                user_id: u6.id)

wi7 = Wish.create!( name: "Rice",
                details: "I really want rice. Yangzhou fried rice please",
                wedding_id: w1.id,
                user_id: u6.id)