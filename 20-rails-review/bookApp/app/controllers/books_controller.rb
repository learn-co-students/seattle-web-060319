class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  # before_action :book_params, only: [:create, :update]
  def index
    @books = Book.all
  end

  # def show
  # end

  def new
    @book = Book.new
    @authors = Author.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      # byebug
      flash.clear
      flash[:title_message] = @book.errors.messages[:title][0]
      flash[:author_message] = @book.errors.messages[:author][0]
      flash[:snippet_message] = @book.errors.messages[:snippet][0]
      render :new
    end
  end

  # def edit
  # end

  def update
    @book.update(book_params)
    redirect_to @book
  end

  def destroy
    @book.delete
    redirect_to books_path
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :snippet, :author_id)
  end

end
