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

zone_1 = Location.create(name:"Emerald")
zone_2 = Location.create(name:"Ruby")
zone_3 = Location.create(name:"Sapphire")
zone_4 = Location.create(name:"Diamond")
bonus = Location.create(name:"Bonus")

quests = Quest.create ([
  {name:"Quest 1", instructions:"Sticker located under bench", answer: "777p", location: zone_1, latitude: -37.817076, longitude: 144.967269, point_value: 10},
  {name:"Quest 2", instructions:"Sticker located on window", answer:"84de", location: zone_1, latitude: -37.816067, longitude: 144.968324, point_value: 10},
  {name:"Quest 3", instructions:"Sticker located in elevator", answer:"l337", location: zone_1, latitude: -37.813109, longitude: 144.967573, point_value: 10},
  {name:"Quest 4", instructions:"Sticker located in aisle 5", answer:"000b", location: zone_2, latitude: -37.811168, longitude: 144.964883, point_value: 20},
  {name:"Quest 5", instructions:"Sticker located in bookstore", answer:"31cb", location:zone_2, latitude: -37.812021, longitude: 144.965152, point_value: 20},
  {name:"Quest 6", instructions:"Sticker located in gallery", answer:"la5fp", location: zone_2, latitude: -37.816085, longitude: 144.968991, point_value: 20},
  {name:"Quest 7", instructions:"Sticker located in toilet stall", answer:"m00p", location: zone_3, latitude: -37.818372, longitude: 144.953423, point_value: 30},
  {name:"Quest 8", instructions:"Sticker located in mcdonalds", answer:"m4x1", location: zone_3, latitude: -37.814467, longitude: 144.961817, point_value: 30},
  {name:"Quest 9", instructions:"Sticker found in retail shop", answer:"k11l", location: zone_3, latitude: -37.808271, longitude: 144.958108, point_value: 30},
  {name:"Quest 10", instructions:"Sticker found in Emporium, level 2", answer:"q8te", location: zone_4, latitude: -37.812097, longitude: 144.963927, point_value: 40},
  {name:"Quest 11", instructions:"Sticker located in laneway", answer:"19t4", location:zone_4, latitude: -37.815915, longitude: 144.961796, point_value: 40},
  {name:"Quest 12", instructions:"Sticker located at tram stop", answer:"v22x", location: zone_4, latitude: -37.811694, longitude: 144.956442, point_value: 40},
  {name:"Bonus Quest", instructions:"Love Locks", answer: "l0v3", location: bonus, latitude: -37.819652, longitude: 144.965121, point_value: 50}
])

teams = Team.create([
  {name:"Admin", password:"guest", email:"admin@ga.co", phone_number:"0400998075", members:"Gem", admin_access:true, image_url: "https://www.best-books-for-kids.com/images/xtashiimage.jpg.pagespeed.ic.j27dWNpLdE.jpg"},
  {name:"D's Puddings", password:"mistyrose", email:"dt@ga.co", phone_number:"0432322237", members:"dt", admin_access:true, image_url: "https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/1700/thumb_HEADSHOTS__2001_.jpg"},
  {name:"K-pop", password:"kdog", email:"kasun@ga.co", phone_number:"0402012654", members:"kasun", admin_access:false, image_url: "https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/10879/thumb_Profile__1_.jpg"},
  {name:"Lyle's Smiles", password:"lylepad", email:"lyle@ga.co", phone_number:"0422123456", members:"lyle", admin_access: false, image_url: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAIA_wDGAAAAAQAAAAAAAAppAAAAJDliMDFiN2U4LTBkZjUtNDQ0OS1hMDdlLTA5M2I3ZDgzOGFmYQ.jpg"}
])
