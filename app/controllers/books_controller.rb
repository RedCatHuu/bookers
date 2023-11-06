class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  # def new
  #   @book = Book.new
  # end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end 
  
  def show
    
    @book = Book.find(params[:id])
  end 
  
  def edit
    @book = Book.find(params[:id])
  end 
  
  def update
   #Listテーブルから探し出してきたidのデータをlistに代入
    book = Book.find(params[:id])
    #上で代入したデータにアップデートメソッドを実行
    book.update(book_params)
    redirect_to book_path(book.id)
  end 
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end 
  
end


