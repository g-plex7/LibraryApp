class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :books, :class_name => "User", :foreign_key => "book_id"
  after_save :create_borrow_book 

  def create_borrow_book
    Book.borrow(borrow: 0, user_id: self.id) 
  end 
end
