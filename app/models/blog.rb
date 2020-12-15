class Blog < ApplicationRecord
    belongs_to :user

    require 'date'

    def translate_date
        string = self.created_at.to_s
        date = Date.parse(string)
        final_date = date.month.to_s + "-" + date.day.to_s + "-" + date.year.to_s
        self.update(date: final_date)

    end
end
