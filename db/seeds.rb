puts 'Create Users'


User.destroy_all


User.create(
    name: "Glimmer",
    username:"Glimmer1",
    email:"glimmer@lovetravel.com",
    password:"glimmer1",
)
User.create(
    name:"Bow",
    username:"Bow1",
    email:"bow@lovetravel.com",
    password:"bow1",
)
User.create(
    name:"Adora",
    username:"Adora1",
    email:"adora@lovetravel.com",
    password:"adora1",
)
User.create(
    name:"Catra",
    username:"Catra1",
    email:"catra@lovetravel.com",
    password:"catra1",
)
User.create(
    name:"Horde",
    username:"Horde1",
    email:"horde@lovetravel.com",
    password:"horde1",
)

puts "Done seeding!"