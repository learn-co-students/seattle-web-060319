class AuthorsController < ApplicationController
  get '/authors' do
    @authors = Author.all
    erb :'/authors/index'
  end

  get '/authors/:id' do
    byebug
    @author = Author.find(params[:id])
    erb :'/authors/show'
    # @author = Author.find_by_id(params[:id])
  end
end
