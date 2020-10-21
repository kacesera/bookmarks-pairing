require 'sinatra/base'
require './lib/bookmark_list'

class BookmarkManager < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  post '/add_bookmarks' do
    BookmarkList.create(params[:add_bookmark])
    redirect to('/confirm')
  end

  get '/confirm' do
    erb :confirm
  end

  run! if app_file == $0
end
