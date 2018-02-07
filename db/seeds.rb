# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quest.destroy_all
Location.destroy_all
Team.destroy_all

zone_1 = Location.create(name:"Zone 1")
zone_2 = Location.create(name:"Zone 2")
zone_3 = Location.create(name:"Zone 3")
zone_4 = Location.create(name:"Zone 4")

quests = Quest.create ([
  {instructions:"Sticker located under bench", answer: "777p", location: zone_1, point_value: 5},
  {instructions:"Sticker located on window", answer:"84de", location: zone_1, point_value: 4},
  {instructions:"Sticker located in elevator", answer:"l337", location: zone_1, point_value: 2},
  {instructions:"Sticker located in aisle 5", answer:"000b", location: zone_2, point_value: 5},
  {instructions:"Sticker located in bookstore", answer:"31cb", location:zone_2, point_value: 4},
  {instructions:"Sticker located in gallery", answer:"la5fp", location: zone_2, point_value: 2},
  {instructions:"Sticker located in toilet stall", answer:"m00p", location: zone_3, point_value: 5},
  {instructions:"Sticker located in mcdonalds", answer:"m4x1", location: zone_3, point_value: 4},
  {instructions:"Sticker found in retail shop", answer:"k11l", location: zone_3, point_value: 2},
  {instructions:"Sticker found in Emporium, level 2", answer:"q8te", location: zone_4, point_value: 5},
  {instructions:"Sticker located in laneway", answer:"19t4", location:zone_4, point_value: 4},
  {instructions:"Sticker located at tram stop", answer:"v22x", location: zone_4, point_value: 2},
])

teams = Team.create([
  {name:"Admin", password:"guest", email:"admin@ga.co", phone_number:"0400998075", members:"Gem", admin_access:true},
  {name:"D's Puddings", password:"mistyrose", email:"dt@ga.co", phone_number:"0432322237", members:"dt", admin_access:true},
  {name:"K-pop", password:"kdog", email:"kasun@ga.co", phone_number:"0402012654", members:"kasun", admin_access:false},
  {name:"Lyle's Smiles", password:"lylepad", email:"lyle@ga.co", phone_number:"0422123456", members:"lyle", admin_access: false},
])
