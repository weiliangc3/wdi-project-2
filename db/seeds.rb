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


w1 = Wedding.create!( name: "WeiDing",
                  description: "Wei's Test Wedding")

w2 = Wedding.create!( name: "Jill's Wedding",
                  description: "Jill's Test Wedding")

w3 = Wedding.create!( name: "Carl's Wedding",
                  description: "Carl's Test Wedding")

w4 = Wedding.create!( name: "Bill's Wedding",
                  description: "Bill's Test Wedding")

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
                    status: "pending",
                    email: "john@john.com",
                    wedding_id: w1.id)

wi1 = Wish.create!( name: "Pan",
                details: "I really want a pan. Teflon please",
                wedding_id: w1.id)

wi2 = Wish.create!( name: "Gamecube",
                details: "I really want a Gamecube, Smash Bros please",
                wedding_id: w1.id)

wi3 = Wish.create!( name: "Duvet",
                details: "I really want a duvet. 50 tog please",
                wedding_id: w1.id)

wi4 = Wish.create!( name: "Guitar",
                details: "I really want a guitar. Fender acoustic please",
                wedding_id: w2.id)