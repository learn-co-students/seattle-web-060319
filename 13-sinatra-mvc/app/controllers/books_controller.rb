class BooksController < Sinatra::Base
  set :views, 'app/views'

  get '/' do
    "Hello World"
  end

  get '/books' do
    @books = Book.all
    erb :index
  end

  get '/books/:id' do
    # byebug
    @book = Book.find_by(id: params[:id])
    erb :show
  end


end
