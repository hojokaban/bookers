class BooksController < ApplicationController

  def top
  end

  def index
  	@books = Book.all
  	@book = Book.new
  end

  def create
  	book = Book.new(book_params)
  	if book.save
  		flash[:notice] = "Book was successfully added."
  	   redirect_to book_path(book)
  	 else
  	   render action: :index
  	end
  end

  def show
  	@book = Book.find(params[:id])
  end

  def new
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
  	if book.update(book_params)
  	   flash[:notice] = "Book was successfully updated."
  	   redirect_to book_path(book)
  	 else
  	   render template: "book/#{book.id}/edit"
  	end
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	redirect_to "/books"
  end

  private

  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
