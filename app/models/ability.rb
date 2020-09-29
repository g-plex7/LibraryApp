# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :borrow, Book 

    if user.present?
      can :pending, Book, user_id: user.id 
    end 
  end
end
