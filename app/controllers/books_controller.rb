class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def new
    @list = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/show'
  end 
  
  def show
    @book = book.find(params[:id])
  end 
  
  # showが見れるか確認する
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end 
  
end


