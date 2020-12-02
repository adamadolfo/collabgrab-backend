class User < ApplicationRecord
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followed, through: :followed_users

    has_many :following_users, foreign_key: :followed_id, class_name: 'Follow'
    has_many :followers, through: :following_users

    has_many :user_skills
    has_many :skills, through: :user_skills

    has_many :collaborations
    has_many :projects, through: :collaborations

    has_many :posts
    

    has_secure_password

    # validates :password, presence: true
    # validates :username, presence: true
    # validates :username, uniqueness: true

    # def follow(user)
    #     follow.create(followed_id: user.id)
    # end

    # def unfollow(user)
    #     follow.find_by(followed_id: user.id).destroy
    # end

    # def following?(user)
    #     following_users.include?(user)
    # end




end
