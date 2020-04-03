class BooksController < ApplicationController

  def top
  end

  def index
  	@book = Book.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
