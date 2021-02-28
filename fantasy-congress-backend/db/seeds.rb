# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Team.destroy_all
Senator.destroy_all
Bill.destroy_all

usr1 = User.create(first_name: "Scott", username: "shlee", password: "password", email: "slee@slee.com")
usr2 = User.create(first_name: "Norm", username: "nwlee", password: "password", email: "nlee@nlee.com")

tm1 = Team.create(user_id: usr1.id, team_name: "Young Republicans")
tm2 = Team.create(user_id: usr2.id, team_name: "Old Democrats")

bill01 = Bill.create(bill_alpha_id: "s285-117", sponsor_id: "B001230", sponsor_name: "Tammy Baldwin")
bill02 = Bill.create(bill_alpha_id: "s287-117", sponsor_id: "B001230", sponsor_name: "Tammy Baldwin")
bill03 = Bill.create(bill_alpha_id: "s236-117", sponsor_id: "B001230", sponsor_name: "Tammy Baldwin")
bill04 = Bill.create(bill_alpha_id: "s4961-116", sponsor_id: "B001230", sponsor_name: "Tammy Baldwin")
bill05 = Bill.create(bill_alpha_id: "s4687-116", sponsor_id: "B001230", sponsor_name: "Tammy Baldwin")
bill06 = Bill.create(bill_alpha_id: "s386-117", sponsor_id: "B001267", sponsor_name: "Michael Bennett")
bill07 = Bill.create(bill_alpha_id: "s173-117", sponsor_id: "B001267", sponsor_name: "Michael Bennett")
bill08 = Bill.create(bill_alpha_id: "s5028-116", sponsor_id: "B001267", sponsor_name: "Michael Bennett")
bill09 = Bill.create(bill_alpha_id: "s4760-116", sponsor_id: "B001267", sponsor_name: "Michael Bennett")
bill10 = Bill.create(bill_alpha_id: "s5015-116", sponsor_id: "B001267", sponsor_name: "Michael Bennett")
bill11 = Bill.create(bill_alpha_id: "sconres6-117", sponsor_id: "B001288", sponsor_name: "Cory Booker")
bill12 = Bill.create(bill_alpha_id: "s457-117", sponsor_id: "B001288", sponsor_name: "Cory Booker")
bill13 = Bill.create(bill_alpha_id: "sres75-117", sponsor_id: "B001288", sponsor_name: "Cory Booker")
bill14 = Bill.create(bill_alpha_id: "s366-117", sponsor_id: "B001288", sponsor_name: "Cory Booker")
bill15 = Bill.create(bill_alpha_id: "s346-117", sponsor_id: "B001288", sponsor_name: "Cory Booker")
bill16 = Bill.create(bill_alpha_id: "s472-117", sponsor_id: "B001310", sponsor_name: "Mike Braun")
bill17 = Bill.create(bill_alpha_id: "s474-117", sponsor_id: "B001310", sponsor_name: "Mike Braun")
bill18 = Bill.create(bill_alpha_id: "s489-117", sponsor_id: "B001310", sponsor_name: "Mike Braun")
bill19 = Bill.create(bill_alpha_id: "s293-117", sponsor_id: "B001310", sponsor_name: "Mike Braun")
bill20 = Bill.create(bill_alpha_id: "sres12-117", sponsor_id: "B001310", sponsor_name: "Mike Braun")

Senator.create(team_id: tm1.id, bill_id: bill01.id, sen_alpha_id: "B001230")
Senator.create(team_id: tm1.id, bill_id: bill11.id, sen_alpha_id: "B001288")
Senator.create(team_id: tm2.id, bill_id: bill06.id, sen_alpha_id: "B001267")
Senator.create(team_id: tm2.id, bill_id: bill20.id, sen_alpha_id: "B001310")