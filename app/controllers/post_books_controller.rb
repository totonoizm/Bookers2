class PostBooksController < ApplicationController
  def edit
  end

  def index
  end

  def new
    @post_book = PostBook.new
  end

  def create
    @post_book = PostBook.new(post_book_params)
    @post_book.user_id = current_user.id
    @post_book.saved
    redirect_to post_book_path
  end

  def show
  end

  private
  def post_book_params
    params.require(:post_book).permit(:title, :body)
  end
end
