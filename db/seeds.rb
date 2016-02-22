# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

user = User.new(
  username: 'Steve',
  email: 'steve@email.com',
  password: '12345678')
user.save

user2 = User.new(
  username: 'Amy',
  email: 'amy@email.com',
  password: '12345678')
user2.save



date = "2016-" + rand(1..12).to_s + "-" + rand(1..28).to_s
description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

  Image.create(
    user_id: 1,
    tileset_name: "Upper Peninsula Michigan",
    map: "karlaking2.8kwtn5pq",
    date_taken: date,
    description: description,
    camera_type: "Landsat 5"
    )

  Image.create(
    user_id: 2,
    tileset_name: "Farm",
    map: "karlaking2.des6as2q",
    date_taken: date,
    description: description,
    camera_type: "DJI Phantom"
    )

  Image.create(
    user_id: 2,
    tileset_name: "Fire Map",
    map: "karlaking2.cb56po29",
    date_taken: date,
    description: description,
    camera_type: "DJI Phantom"
    )
