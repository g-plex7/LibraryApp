class Borrowing < ApplicationRecord
    belongs_to: book 
    belongs_to: user, :optional => true
    
end
 