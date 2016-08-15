# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin_user1@example.com', password: 'password', password_confirmation: 'password')

case Rails.env
when "development"
  
  User.destroy_all
  Week.destroy_all

  Week.create(week_number: "1", year: "2016", active: true)

  User.create(email: "admin1@example.com", username: "admin", password: "password", password_confirmation: "password", address: "123 Admin Street", fav_teams: "Chicago Cubs, Chicago Bears", cell_phone_number: "312-123-2345", admin: true)  

  User.create(email: "eric@example.com", username: "eric", password: "password", password_confirmation: "password", address: "123 Eric Street", fav_teams: "Detroit Lions, Detroit Tigers", cell_phone_number: "248-123-2345", admin: false)

  User.create(email: "chezbro@example.com", username: "chezbro", password: "password", password_confirmation: "password", address: "123 Chezbro Street", fav_teams: "Detroit Pistons, Detroit Red Wings", cell_phone_number: "313-123-2345", admin: false)


when "production"




end