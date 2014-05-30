Place.delete_all
tn = Place.create("name" => "Tommy Nevin's Pub", "address" => "1454 Sherman Ave, Evanston", "phone" => "(847) 869-0450")
bl = Place.create("name" => "Bar Louie", "address" => "1520 Sherman Ave, Evanston", "phone" => "(847) 733-8300")
bat = Place.create("name" => "Bat 17", "address" => "1709 Benson Ave, Evanston", "phone" => "(847) 733-7117")

Event.delete_all
monb = Event.create("title" => "Miller Specials", "date" => "Monday", "time" => "11am-11pm", "place_id" => bat.id, "details" => "$3 16oz Miller drafts and $20 105oz Miller towers")
tuesb = Event.create("title" => "$5 Apps", "date" => "Tuesday", "time" => "5-11pm", "place_id" => bat.id, "details" => "$5 for onion strings, buffalo bites, or pretzel bites")
wedb = Event.create("title" => "$4 Draft Night", "date" => "Wednesday", "time" => "11am-11pm", "place_id" => bat.id, "details" => "$4 for a pint of any draft selection")
thursb = Event.create("title" => "$3 Vodka Special", "date" => "Thursday", "time" => "11am-11pm", "place_id" => bat.id, "details" => "$3 vodka well drinks")
suntn = Event.create("title" => "$6 Pitchers", "date" => "Sunday", "time" => "11:30am-midnight", "place_id" => tn.id, "details" => "$6 Bud, Bud Light, or Shock Top pitchers")
montn = Event.create("title" => "$3 U-Call-Its", "date" => "Monday", "time" => "11:30 - 1am", "place_id" => tn.id, "details" => "Any drink $3. Excludes craft beer, premium wines, and non-well liquor")
tuestn = Event.create("title" => "Something for Everyone", "date" => "Tuesday", "time" => "11:30-2am", "place_id" => tn.id, "details" => "$3 tater tot apps, $4 Jack Daniels drinks, and $8 Goose Island pitchers")
trivtn = Event.create("title" => "Pub Trivia", "date" => "Tuesday", "time" => "8-11pm", "place_id" => tn.id, "details" => "Team pub trivia")
wedtn = Event.create("title" => "Stadium Cups", "date" => "Wednesday", "time" => "11:30-2am", "place_id" => tn.id, "details" => "$3 Bud & Bud Light stadium cups and $5 Jameson's")
thurstn = Event.create("title" => "Get Canned!", "date" => "Thursday", "time" => "11:30-2am", "place_id" => tn.id, "details" => "$3 Rolling Rock cans. $4 Foster oil cans. $5 Bud Light 25oz bombers. $8 PBR can & Jameson shot.")
fritn = Event.create("title" => "Stella Drafts", "date" => "Friday", "time" => "11:30-3am", "place_id" => tn.id, "details" => "$4 Stella Artois drafts")
sattn = Event.create("title" => "Goose Island Drafts", "date" => "Saturday", "time" => "11:30-3am", "place_id" => tn.id, "details" => "$4 select Goose Island drafts")
tuesbl = Event.create("title" => "$1 Burger Night", "date" => "Tuesday", "time" => "5pm-2am", "place_id" => bl.id, "details" => "Your choice of beef, chicken, turkey, or portabella burgers for only $1!")
wedbl = Event.create("title" => "$1 Beer Night", "date" => "Wednesday", "time" => "11-2am", "place_id" => bl.id, "details" => "$1 domestic bottles plus $5.25 martinis")

User.delete_all
meghan = User.create("username" => "mlf903", "password" => "kiei final", "name" => "Meghan Frank", "email" => "mfrank2014@kellogg.northwestern.edu")

Review.delete_all
Review.create("user_id" => meghan.id, "place_id" => tn.id, "rating" => 4, "comments" => "Fun place but they do not like Kellogg students")
Review.create("user_id" => meghan.id, "place_id" => bl.id, "rating" => 3, "comments" => "Make sure to come on a night with specials, otherwise the mediocre food and bad service aren't worth your time")
Review.create("user_id" => meghan.id, "place_id" => bat.id, "rating" => 5, "comments" => "Great bar and awesome food")






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
