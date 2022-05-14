class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
  @book = Book.new(book_params)
  @book.user_id = current_user.id
  @book.save
  redirect_to book_path
  end

  def index
    @books = books.all
  end

  def show
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:shop_name, :image, :caption)
  end
end