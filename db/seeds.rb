# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Donation.destroy_all
MatchingRule.destroy_all
Campaign.destroy_all


harvard = Campaign.create(school: "Harvard", amount: 500)

harvard.donations.create({amount: 500, date: Date.today, name: 'Anonymous', email: 'fake@fake.com'})
harvard.matching_rules.create({ratio: 1, start_date: (Date.today-1), end_date: (Date.today+300), cap: 50000})
