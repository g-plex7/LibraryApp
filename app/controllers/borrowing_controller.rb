class BorrowingController < ApplicationController
    def borrow_book 
        @book = Book.find(params[:id])
        @has_borrowed = Book.where(user_id: session[:user_id]).exists?
        # @has_borrowed = true
        @book.borrow = true  
        @book.return = false 
        @book.user_id = session[:user_id]

        if @book.save!
            redirect_to @book, notice: "Book was Borrowed"
        else 
            render :show 
        end 
    end 

    def return_book
        @book = Book.find(params[:id])
        @book.return = true  
        @book.borrow = false
        @book.user_id = session[:user_id]
        
        if @book.save! 
            redirect_to @book, notice: 'book was return'
        else  
            render :show
        end 
    end 
end
