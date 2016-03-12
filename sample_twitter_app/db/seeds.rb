# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user = User.new
@user.name = 'User 0001'
@user.username = 'hoge'
@user.location = 'Tokyo, Japan'
@user.about = 'hogehoge.'
@user.save

@user = User.new
@user.name = 'User 0002'
@user.username = 'huga'
@user.location = 'Osaka, Japan'
@user.about = 'hugahuga.'
@user.save

@user = User.new
@user.name = 'User 0003'
@user.username = 'test'
@user.location = 'Kyoto, Japan'
@user.about = 'My username is test.'
@user.save