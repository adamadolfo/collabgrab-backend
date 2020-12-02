# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Skill.destroy_all()
Project.destroy_all()
User.destroy_all()
Project.destroy_all()
UserSkill.destroy_all()
ProjectSkill.destroy_all()
Collaboration.destroy_all()



Skill.create(name: "Advertising", img: 'https://i.imgur.com/BVw47M3.jpg')
Skill.create(name: "Technology", img: 'https://i.imgur.com/T1BnRhg.jpg')
Skill.create(name: "Legal", img: 'https://i.imgur.com/ITg3Sti.jpg')
Skill.create(name: "Hospitality", img: 'https://i.imgur.com/BEuBvrt.jpg')
Skill.create(name: "Education", img: 'https://i.imgur.com/S8kaK30.jpg')
Skill.create(name: "Consulting", img: 'https://i.imgur.com/0TaFwEd.jpg')
Skill.create(name: "Administration", img: 'https://i.imgur.com/RvdGXl0.jpg')
Skill.create(name: "Construction", img: 'https://i.imgur.com/kfhawdr.jpg')
Skill.create(name: "Manufacturing", img: 'https://i.imgur.com/sKC7Ihs.jpg')
Skill.create(name: "Farming", img: 'https://i.imgur.com/2ezeF9d.jpg')
Skill.create(name: "Design", img: 'https://i.imgur.com/l6glOGc.jpg')
Skill.create(name: "Mining", img: 'https://i.imgur.com/6llwR1C.png')
Skill.create(name: "Marketing", img: 'https://i.imgur.com/mFAJEOY.png')
Skill.create(name: "Banking", img: 'https://i.imgur.com/E2kPLDV.jpg')
Skill.create(name: "Retail", img: 'https://i.imgur.com/aiLxUiO.jpg')
Skill.create(name: "Real-Estate", img: 'https://i.imgur.com/2hZzNea.jpg')
Skill.create(name: "Healthcare", img: 'https://i.imgur.com/xWs7Jjp.jpg')
Skill.create(name: "IT", img: 'https://i.imgur.com/hjmJztg.jpg')
Skill.create(name: "Sales", img: 'https://i.imgur.com/MrcpifO.jpg')
Skill.create(name: "Government", img: 'https://i.imgur.com/6olFa43.jpg')
Skill.create(name: "Community-Services", img: 'https://i.imgur.com/pMsG53A.jpg')
Skill.create(name: "Accounting", img: 'https://i.imgur.com/EamHrYA.jpg')

(10).times do 
    User.create(name: Faker::TvShows::RuPaul.queen, username: Faker::Esport.player, password: "password")
end

project1 = Project.create(name: "create a card game", details: "I want to create a trading card game with physical cards, looking for collaboration to print, trademark, draw and market", location: "maryland")
project2 = Project.create(name: "tech startup", details: "need a few web developers to work on a brand new startup, can collaborate from home and we can discuss compensation.", location: "remote")
project3 = Project.create(name: "project3", details: "details about project 3", location: "state or country")
project4 = Project.create(name: "xyz", details: "xyz", location: "xyz")
project5 = Project.create(name: "turn basement into movie theatre", details: "need someone with electritian backround to help me wire up", location: "wherever")

(100).times do 
UserSkill.create(user_id: rand(73..100), skill_id: rand(1800..1900))
end

(100).times do
ProjectSkill.create(project_id: rand(5..50), skill_id: rand(1800..1899))
end

Collaboration.create(user_id: rand(63..73), project_id: project1)
Collaboration.create(user_id: rand(63..73), project_id: project1)
Collaboration.create(user_id: rand(63..73), project_id: project1)


