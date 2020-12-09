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
RequiredSkill.destroy_all()



a = Skill.create(name: "Advertising", img: 'https://i.imgur.com/BVw47M3.jpg')
b = Skill.create(name: "Technology", img: 'https://i.imgur.com/T1BnRhg.jpg')
c = Skill.create(name: "Legal", img: 'https://i.imgur.com/ITg3Sti.jpg')
d = Skill.create(name: "Hospitality", img: 'https://i.imgur.com/BEuBvrt.jpg')
e = Skill.create(name: "Education", img: 'https://i.imgur.com/S8kaK30.jpg')
f = Skill.create(name: "Consulting", img: 'https://i.imgur.com/0TaFwEd.jpg')
g = Skill.create(name: "Administration", img: 'https://i.imgur.com/RvdGXl0.jpg')
h = Skill.create(name: "Construction", img: 'https://i.imgur.com/kfhawdr.jpg')
i = Skill.create(name: "Manufacturing", img: 'https://i.imgur.com/sKC7Ihs.jpg')
j = Skill.create(name: "Farming", img: 'https://i.imgur.com/2ezeF9d.jpg')
k = Skill.create(name: "Design", img: 'https://i.imgur.com/l6glOGc.jpg')
l = Skill.create(name: "Mining", img: 'https://i.imgur.com/6llwR1C.png')
m = Skill.create(name: "Marketing", img: 'https://i.imgur.com/mFAJEOY.png')
n = Skill.create(name: "Banking", img: 'https://i.imgur.com/E2kPLDV.jpg')
o = Skill.create(name: "Retail", img: 'https://i.imgur.com/aiLxUiO.jpg')
p = Skill.create(name: "Real-Estate", img: 'https://i.imgur.com/2hZzNea.jpg')
q = Skill.create(name: "Healthcare", img: 'https://i.imgur.com/xWs7Jjp.jpg')
r = Skill.create(name: "IT", img: 'https://i.imgur.com/hjmJztg.jpg')
s = Skill.create(name: "Sales", img: 'https://i.imgur.com/MrcpifO.jpg')
t = Skill.create(name: "Government", img: 'https://i.imgur.com/6olFa43.jpg')
u = Skill.create(name: "Community-Services", img: 'https://i.imgur.com/pMsG53A.jpg')
v = Skill.create(name: "Accounting", img: 'https://i.imgur.com/EamHrYA.jpg')


gon = User.create(name: "Gon Freecs", username: "Gon Freecs", password: "password", img: "https://i.imgur.com/cfRe8Ci.jpg")
subaru = User.create(name: "Natuski Subaru", username: "Subaru", password: "password", img: "https://i.imgur.com/cx7aVxY.png")
okabe = User.create(name: "Okabe Rintarou", username: "Okabe", password: "password", img: "https://i.imgur.com/VveGHDN.jpg")
light = User.create(name: "Light Yagami", username: "Light", password: "password", img: "https://i.imgur.com/NLNZRgV.jpg")
kageyama = User.create(name: "Kageyama Tobio", username: "Kageyama", password: "password", img: "https://i.imgur.com/Nzq2nCp.png")
allmight = User.create(name: "All Might", username: "All Might", password: "password", img: "https://i.imgur.com/DSRIafb.png")
kaiba = User.create(name: "Seto Kaiba", username: "Kaiba", password: "password", img: "https://i.imgur.com/6tS5QhW.png")
jonsnow = User.create(name: "Jon Snow", username: "Jon Snow", password: "password", img: "https://i.imgur.com/54ilHIj.jpg")
ironman = User.create(name: "Tony Stark", username: "Ironman", password: "password", img: "https://i.imgur.com/wTOUX5Y.jpg")
drewbrees = User.create(name: "Drew Brees", username: "Drew Brees", password: "password", img: "https://i.imgur.com/8yecj2a.jpg")
spiderman = User.create(name: "Peter Parker", username: "Spiderman", password: "password", img: "https://i.imgur.com/yMDe67k.jpg")


project1 = Project.create(name: "create a card game", details: "I want to create a trading card game with physical cards, looking for collaboration to print, trademark, draw art and market", location: "Maryland")
project3 = Project.create(name: "This is a Different Project", details: Faker::Lorem.sentence(word_count: 12) , location: "Remote")
project4 = Project.create(name: "BasketballHero", details: "Pick a Team from a large selection of players to tried to beat the boss in 3/4 catagories (points, rebounds, assists, steals). Looking for a person in game design to help design the game", location: "Remote")
project5 = Project.create(name: "PokeSim", details: "A complete simulation of traveling around the world and collecting all the pokemon. I could use some legal advice to make sure I will not get sued by Gamefreak.", location: "Remote")
project6 = Project.create(name: "Profolio", details: "A template for a professional portfolio. Need help getting the word out about this application", location: "Remote")
project7 = Project.create(name: "aRoomi", details: "A designated place to find a roomate for college. No more facebook groups. How do I let students know about this?", location: "Remote")
project2 = Project.create(name: "Tech Startup", details: Faker::Lorem.sentence(word_count: 12) , location: "Remote")



RequiredSkill.create(name: "Design", project_id: project1.id)
RequiredSkill.create(name: "Farming", project_id: project3.id)
RequiredSkill.create(name: "Technology", project_id: project4.id)
RequiredSkill.create(name: "Legal", project_id: project5.id)
RequiredSkill.create(name: "Advertising", project_id: project6.id)
RequiredSkill.create(name: "Marketing", project_id: project7.id)
RequiredSkill.create(name: "IT", project_id: project2.id)



(50).times do 
UserSkill.create(user_id: rand(267..280), skill_id: rand(2456..2480))
end

(100).times do
ProjectSkill.create(project_id: rand(5..50), skill_id: rand(1800..1899))
end

Collaboration.create(user_id: rand(63..73), project_id: project1.id)
Collaboration.create(user_id: rand(63..73), project_id: project1.id)
Collaboration.create(user_id: rand(63..73), project_id: project1.id)


