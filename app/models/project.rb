class Project < ApplicationRecord
    has_many :collaborations
    has_many :users, through: :collaborations

    has_many :project_skills
    has_many :skills, through: :project_skills

    has_many :required_skills

    has_many :posts
    
    validates :name, presence: true

    validates :details, presence: true

    validates :location, presence: true

end
