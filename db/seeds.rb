# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s1 = Student.create(first_name: "Francisco", last_name: "Costa", active: true)
s2 = Student.create(first_name: "Endy", last_name: "Ranaudo", active: true)
s3 = Student.create(first_name: "Xabi", last_name: "Casan")
