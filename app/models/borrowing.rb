class Borrowing < ApplicationRecord
    belongs_to: book 
    belongs_to: user, :optional => true
    validate :validate_borrow

    private  
    def validate_borrow 
        return if borrow.count <= 1
        errors.add(:borrow, 'you cant borrow 1 book per user') 
    end 
end
 