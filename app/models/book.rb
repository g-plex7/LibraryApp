class Book < ApplicationRecord
    belongs_to :user, :optional => true
    validate :user_quota, :on => :create

    private 
    def user_quota
        if user.book.today.count >= 1 
            errors.add(:base, "user borrow 1 book")
        elsif user.book.this_day.count >= 2 
            errors.add(:base, "Exceeds borrow limit")
        end  
    end 
end
