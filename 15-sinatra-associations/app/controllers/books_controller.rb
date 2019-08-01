class BooksController < ApplicationController
  get '/' do
    "Hello World"
  end

  get '/books' do
    @books = Book.all
    erb :'books/index'
  end

  get '/books/new' do
    @authors = Author.all
    erb :'books/new'
  end

  post '/books' do
    # byebug
    @book = Book.create(title: params[:title], author: params[:author], snippet: params[:snippet])
    redirect '/books'
  end

  get '/books/:id' do
    # byebug
    @book = Book.find_by(id: params[:id])
    erb :'books/show'
  end

  get '/books/:id/edit' do
    @book = Book.find(params[:id])
    erb :'books/edit'
  end

  patch '/books/:id' do
    # byebug
    @book = Book.find(params[:id])
    @book.update(title: params[:title], author: params[:author], snippet: params[:snippet])
    redirect "/books/#{@book.id}"
  end

  delete '/books/:id' do
    byebug
    book = Book.find_by(id: params[:id])
    book.destroy
    redirect '/books'
  end
end
