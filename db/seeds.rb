User.destroy_all
Wedding.destroy_all
Attendance.destroy_all
Wish.destroy_all

u1 = User.new(email: "wei@wei.com",
              password: "password",
              first_name: "Wei",
              last_name: "Cheah")

u2 = User.new(email: "john@john.com",
              password: "password",
              first_name: "John",
              last_name: "Segar")

u3 = User.new(email: "cat@cat.com",
              password: "password",
              first_name: "Cat",
              last_name: "Lau")

w1 = Wedding.new( name: "WeiDing",
                  description: "Wei's Test Wedding")

a1 = Attendance.new(role: "couple",
                    status: "confirmed",
                    email: "wei@wei.com",
                    user_id: u1.id,
                    wedding_id: w1.id)

a2 = Attendance.new(role: "admin",
                    status: "confirmed",
                    email: "cat@cat.com",
                    user_id: u3.id,
                    wedding_id: w1.id)

a3 = Attendance.new(role: "guest",
                    status: "pending",
                    email: "john@john.com",
                    wedding_id: w1.id)

wi1 = Wish.new( name: "Pan",
                details: "I really want a pan. Teflon please",
                wedding_id: w1.id)

wi1 = Wish.new( name: "Gamecube",
                details: "I really want a Gamecube, Smash Bros please",
                wedding_id: w1.id)

wi1 = Wish.new( name: "Duvet",
                details: "I really want a duvet. 50 tog please",
                wedding_id: w1.id)

wi1 = Wish.new( name: "Guitar",
                details: "I really want a guitar. Fender acoustic please",
                wedding_id: w1.id)