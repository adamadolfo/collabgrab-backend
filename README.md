
# CollabGrab

CollabGrab is a simple collaboration project build with a ruby on rails api

CollabGrab is a platform where a user can have skills and search for projects to collaborate on based on who needs their help and for what reason.
Users can also add a project that needs people with a required skillset to complete. Find a user who can help out with a background you need help in.
example: If I had a project where I wanted to create a trading card game. I would post my project and try to find an artist who believes in the project to collaborate.


## Features

## Features

A user can create a profile and add skills based on what they know and can offer to other users. <br/>
A user can create project with a description and required skills they need help with from other users. 


![logiskillproject](https://user-images.githubusercontent.com/69116393/101390462-dd0d1400-3890-11eb-9a7b-b2aa251a68da.gif)


A user can search though all of the skills to find people with those skills.


![skillsandusers](https://user-images.githubusercontent.com/69116393/101391965-1b0b3780-3893-11eb-8f44-7865706d81cd.gif)


A user can filter projects based on what skill they require. <br/>
users can "collaborate" on a project by contributing to a message board where messages persist.


![projectsandchat](https://user-images.githubusercontent.com/69116393/101393290-daacb900-3894-11eb-8765-95ccef1c1567.gif)



users gain "karma points" for contributing in message boards, adding skills to their resume, and hosting a project.                    


## Architecture and models

This application is based on Users, Skills, and Projects. 
All 3 of these models are connected with join tables to make a complete circle. 
Users have many Skills, Skills have many Users (UserSkills)
Users have Projects, Projects have many Users (Collaborations)
Projects have many Skills, Skills have many Projects (ProjectSkills)

This project is in continued development. Stretch Features include: 
a non-logged-in user having a viewable profile, along with a follow or friend request feature 
make a user have an admin status on a project, inviting users to projects rather than open-source contributions
more validations and persiting logged in users on refresh of page
more applications and rewards for the karma point system


## Technologies

build on ruby '2.6.1'
build on 'rails', '~> 6.0.3', '>= 6.0.3.4'
CollabGrab uses a postgres database
Authentication done with 'bcrypt' ruby gem


## Setup
$ bundle install (to download gems)
$ rails s (to start server)
server starts on localhost port 3001



