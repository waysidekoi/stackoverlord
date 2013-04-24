# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "wayne@dbc.com", alias: "wayne")
User.create(email: "eric@dbc.com", alias: "Eric")

User.find(1).questions.create(title: "What is DBC?", details: "stuff")
User.find(2).questions.create(title: "Where's the best place to eat", details: "stuff")

Question.find(1).answers.create(details: "It's a cool place")
Question.find(2).answers.create(details: "Ramen Underground")

a = Answer.find(1)
a.user = User.find(1)
a.save

vote1 = Question.find(1).votes.create()
vote1.user = User.find(1)
vote1.upvote!
vote1.save

vote2 = Answer.find(1).votes.create()
vote2.user = User.find(2)
vote2.upvote!
vote2.save
