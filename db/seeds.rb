# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create email: 'admin@admin.de', password: 'testtest', password_confirmation: 'testtest', username: 'Admin'
admin.add_role :admin

user1 = User.create email: 'test@test.de', password: 'testtest', password_confirmation: 'testtest', username: 'TestUser', typ: 0
user1 = User.create email: 'test2@test.de', password: 'testtest', password_confirmation: 'testtest', username: 'TestUser2', typ: 1
Genre.create name: 'Dance'
Genre.create name: 'Hip Hop'
Genre.create name: 'Pop'
Genre.create name: 'Rock'
Genre.create name: 'Country'