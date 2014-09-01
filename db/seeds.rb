# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user_ids = 20
breakouts_ids = 30
comments_ids = 100
signups_ids = 40

user_ids.times do
  User.create(  first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                cohort: ['Mule Deer', 'Purple Martin', 'Gopher Snakes', 'Tiger Swallowtails'].sample,
                email: Faker::Internet.email,
                password: 'password'
              )
end

breakouts_ids.times do
  Breakout.create(  category: ['Ruby', 'Javascript', 'Rails'].sample,
                    title: Faker::Lorem.sentence,
                    body: Faker::Lorem.paragraph,
                    user_id: rand(1..user_ids),
                    location: ['San Francisco', 'Chicago', 'New York'].sample,
                    time: Time.now,
                    request_type: ['offer', 'request', 'request'].sample
    )
end

comments_ids.times do
  Comment.create(   body: Faker::Lorem.paragraph,
                    user_id: rand(1..comments_ids),
                    breakout_id: rand(1..breakouts_ids)
    )
end

signups_ids.times do
  Signup.create(   user_id: rand(1..user_ids),
                    breakout_id: rand(1..breakouts_ids)
    )
end


