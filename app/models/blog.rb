class Blog < ApplicationRecord
    belongs_to :user
    # scope :of_followed_users, -> (following_users) { where user_id: following_users }


    require 'date'

    def translate_date
        string = self.created_at.to_s
        date = Date.parse(string)
        final_date = date.month.to_s + "-" + date.day.to_s + "-" + date.year.to_s
        self.update(date: final_date)

    end
end
