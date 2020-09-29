Rails.application.routes.draw do
  root to: 'books#index'

  devise_for :users
  resources :books 

  # borrow book 
  get 'books/:id/borrow' => 'books#borrow_book', :as => :borrow_book
  get 'books/:id/return' => 'books#return_book', :as => :return_book
end
