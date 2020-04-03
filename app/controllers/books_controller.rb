class BooksController < ApplicationController

  def top
  end

  def index
  	@books = Book.all
  	@book = Book.new
  end

  def show
  end

  def new
  end

  def edit
  end
end
