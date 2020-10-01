class BorrowingController < ApplicationController
    def borrow_book 
        @book = Book.find(params[:id])
        @book.borrow = true  
        @book.user_id = session[:user_id]

        if @book.save! && (@book.user_id != current_user.id)
            redirect_to @book, notice: "Book was Borrowed"
        else 
            render :show 
        end 
    end 

    def return_book
        @book = Book.find(params[:id])
        @book.return = true  
        @book.user = session[:user_id]
        
        if @book.save! 
            redirect_to @book, notice: 'book was return'
        else  
            render :show
        end 
    end 
end
