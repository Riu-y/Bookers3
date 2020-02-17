class BooksController < ApplicationController
  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(book_params)
  	@book.user_id = current_user.id
    if @book.save
    	flash[:notice] = "you have created book successfully."
       redirect_to books_path(@book.id)
    else
    	flash[:notice] = "Not entered !!"
      @books = Book.all
      @user = User.find(params[:id]
    	render 'index'
    end
  end
  def index
  	@books = Book.all
  	@book = Book.new
  	@user = current_user
  end
  def show
  	@bookfind = Book.find(params[:id])
  	@book = Book.new
  	@user = User.find(params[:id])
  end
  def edit
  	@book = Book.fnd(params[:id])
　　　flash[:notice] = "You have updated book successfully."
  end

  def destroy
  	@book = Book.find(params[:id])
  	@book.destroy
  	redirect_to books_path
  end

  private
    def book_params
    params.require(:book).permit(:title, :body, :user_id)
    end
end