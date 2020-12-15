class User < ApplicationRecord
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followeds, through: :followed_users

    has_many :following_users, foreign_key: :followed_id, class_name: 'Follow'
    has_many :followers, through: :following_users

    has_many :user_skills
    has_many :skills, through: :user_skills

    has_many :collaborations
    has_many :projects, through: :collaborations

    has_many :posts

    has_many :blogs


    has_secure_password


    def following?(other_user)
        if self.followeds.exists?(other_user.id)
            return true
        else
            return false
        end
    end
    
    def follow!(other_user)
        Follow.create(follower_id: self.id, followed_id: other_user.id)
    end

    def unfollow!(other_user)
      self.followed_users.find_by(followed_id: other_user.id).destroy
    end

    def add_karma
        self.karma += 1
    end

    def feed
        self.followeds.map do |followed_user| 
            Blog.all.select { |blog| blog.user_id == followed_user.id }
        end
    end

end
